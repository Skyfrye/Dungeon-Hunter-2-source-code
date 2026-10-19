; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00786fac, declared_size=584, range_size=584, mode=arm
; class-group: gameswf::final_shape
; alias: _ZN7gameswf11final_shape9add_curveEffffff
; demangled: gameswf::final_shape::add_curve(float, float, float, float, float, float)
; decoder-mode: arm
00786fac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00786fb0  01 80 a0 e1                                      mov r8, r1
00786fb4  14 d0 4d e2                                      sub sp, sp, #0x14
00786fb8  00 40 a0 e1                                      mov r4, r0
00786fbc  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
00786fc0  08 00 a0 e1                                      mov r0, r8
00786fc4  02 a0 a0 e1                                      mov sl, r2
00786fc8  03 50 a0 e1                                      mov r5, r3
00786fcc  f4 1e ee eb                                      bl #0x30eba4
00786fd0  3f 14 a0 e3                                      mov r1, #0x3f000000
00786fd4  64 1f ee eb                                      bl #0x30ed6c
00786fd8  40 10 9d e5                                      ldr r1, [sp, #0x40]
00786fdc  00 b0 a0 e1                                      mov fp, r0
00786fe0  0a 00 a0 e1                                      mov r0, sl
00786fe4  ee 1e ee eb                                      bl #0x30eba4
00786fe8  3f 14 a0 e3                                      mov r1, #0x3f000000
00786fec  5e 1f ee eb                                      bl #0x30ed6c
00786ff0  0b 10 a0 e1                                      mov r1, fp
00786ff4  00 90 a0 e1                                      mov sb, r0
00786ff8  05 00 a0 e1                                      mov r0, r5
00786ffc  e8 1e ee eb                                      bl #0x30eba4
00787000  3f 14 a0 e3                                      mov r1, #0x3f000000
00787004  58 1f ee eb                                      bl #0x30ed6c
00787008  09 10 a0 e1                                      mov r1, sb
0078700c  00 70 a0 e1                                      mov r7, r0
00787010  38 00 9d e5                                      ldr r0, [sp, #0x38]
00787014  e2 1e ee eb                                      bl #0x30eba4
00787018  3f 14 a0 e3                                      mov r1, #0x3f000000
0078701c  52 1f ee eb                                      bl #0x30ed6c
00787020  07 10 a0 e1                                      mov r1, r7
00787024  00 60 a0 e1                                      mov r6, r0
00787028  0b 00 a0 e1                                      mov r0, fp
0078702c  de 1c ee eb                                      bl #0x30e3ac
00787030  02 01 c0 e3                                      bic r0, r0, #0x80000000
00787034  00 b0 a0 e1                                      mov fp, r0
00787038  06 10 a0 e1                                      mov r1, r6
0078703c  09 00 a0 e1                                      mov r0, sb
00787040  d9 1c ee eb                                      bl #0x30e3ac
00787044  02 11 c0 e3                                      bic r1, r0, #0x80000000
00787048  0b 00 a0 e1                                      mov r0, fp
0078704c  d4 1e ee eb                                      bl #0x30eba4
00787050  00 10 a0 e1                                      mov r1, r0
00787054  08 00 94 e5                                      ldr r0, [r4, #8]
00787058  a6 1c ee eb                                      bl #0x30e2f8
0078705c  00 00 50 e3                                      cmp r0, #0
00787060  1a 00 00 0a                                      beq #0x7870d0
00787064  20 50 94 e5                                      ldr r5, [r4, #0x20]
00787068  24 30 94 e5                                      ldr r3, [r4, #0x24]
0078706c  01 60 85 e2                                      add r6, r5, #1
00787070  03 00 56 e1                                      cmp r6, r3
00787074  05 20 a0 d1                                      movle r2, r5
00787078  03 00 00 da                                      ble #0x78708c
0078707c  1c 00 84 e2                                      add r0, r4, #0x1c
00787080  c6 10 86 e0                                      add r1, r6, r6, asr #1
00787084  60 f9 ff eb                                      bl #0x78560c
00787088  20 20 94 e5                                      ldr r2, [r4, #0x20]
0078708c  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00787090  40 00 9d e5                                      ldr r0, [sp, #0x40]
00787094  82 11 83 e0                                      add r1, r3, r2, lsl #3
00787098  04 00 81 e5                                      str r0, [r1, #4]
0078709c  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
007870a0  82 11 83 e7                                      str r1, [r3, r2, lsl #3]
007870a4  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
007870a8  20 60 84 e5                                      str r6, [r4, #0x20]
007870ac  85 21 93 e7                                      ldr r2, [r3, r5, lsl #3]
007870b0  85 51 83 e0                                      add r5, r3, r5, lsl #3
007870b4  2c 20 84 e5                                      str r2, [r4, #0x2c]
007870b8  04 30 95 e5                                      ldr r3, [r5, #4]
007870bc  30 30 84 e5                                      str r3, [r4, #0x30]
007870c0  14 d0 8d e2                                      add sp, sp, #0x14
007870c4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007870c8  09 60 a0 e1                                      mov r6, sb
007870cc  0b 70 a0 e1                                      mov r7, fp
007870d0  05 10 a0 e1                                      mov r1, r5
007870d4  08 00 a0 e1                                      mov r0, r8
007870d8  b1 1e ee eb                                      bl #0x30eba4
007870dc  3f 14 a0 e3                                      mov r1, #0x3f000000
007870e0  21 1f ee eb                                      bl #0x30ed6c
007870e4  38 10 9d e5                                      ldr r1, [sp, #0x38]
007870e8  00 90 a0 e1                                      mov sb, r0
007870ec  0a 00 a0 e1                                      mov r0, sl
007870f0  ab 1e ee eb                                      bl #0x30eba4
007870f4  3f 14 a0 e3                                      mov r1, #0x3f000000
007870f8  1b 1f ee eb                                      bl #0x30ed6c
007870fc  0a 20 a0 e1                                      mov r2, sl
00787100  09 30 a0 e1                                      mov r3, sb
00787104  08 10 a0 e1                                      mov r1, r8
00787108  00 00 8d e5                                      str r0, [sp]
0078710c  04 00 a0 e1                                      mov r0, r4
00787110  04 70 8d e5                                      str r7, [sp, #4]
00787114  08 60 8d e5                                      str r6, [sp, #8]
00787118  a3 ff ff eb                                      bl #0x786fac
0078711c  05 10 a0 e1                                      mov r1, r5
00787120  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
00787124  9e 1e ee eb                                      bl #0x30eba4
00787128  3f 14 a0 e3                                      mov r1, #0x3f000000
0078712c  0e 1f ee eb                                      bl #0x30ed6c
00787130  38 10 9d e5                                      ldr r1, [sp, #0x38]
00787134  00 50 a0 e1                                      mov r5, r0
00787138  40 00 9d e5                                      ldr r0, [sp, #0x40]
0078713c  98 1e ee eb                                      bl #0x30eba4
00787140  3f 14 a0 e3                                      mov r1, #0x3f000000
00787144  08 1f ee eb                                      bl #0x30ed6c
00787148  07 10 a0 e1                                      mov r1, r7
0078714c  38 00 8d e5                                      str r0, [sp, #0x38]
00787150  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
00787154  92 1e ee eb                                      bl #0x30eba4
00787158  3f 14 a0 e3                                      mov r1, #0x3f000000
0078715c  02 1f ee eb                                      bl #0x30ed6c
00787160  06 10 a0 e1                                      mov r1, r6
00787164  00 80 a0 e1                                      mov r8, r0
00787168  40 00 9d e5                                      ldr r0, [sp, #0x40]
0078716c  8c 1e ee eb                                      bl #0x30eba4
00787170  3f 14 a0 e3                                      mov r1, #0x3f000000
00787174  fc 1e ee eb                                      bl #0x30ed6c
00787178  05 10 a0 e1                                      mov r1, r5
0078717c  00 a0 a0 e1                                      mov sl, r0
00787180  08 00 a0 e1                                      mov r0, r8
00787184  86 1e ee eb                                      bl #0x30eba4
00787188  3f 14 a0 e3                                      mov r1, #0x3f000000
0078718c  f6 1e ee eb                                      bl #0x30ed6c
00787190  38 10 9d e5                                      ldr r1, [sp, #0x38]
00787194  00 b0 a0 e1                                      mov fp, r0
00787198  0a 00 a0 e1                                      mov r0, sl
0078719c  80 1e ee eb                                      bl #0x30eba4
007871a0  3f 14 a0 e3                                      mov r1, #0x3f000000
007871a4  f0 1e ee eb                                      bl #0x30ed6c
007871a8  0b 10 a0 e1                                      mov r1, fp
007871ac  00 90 a0 e1                                      mov sb, r0
007871b0  08 00 a0 e1                                      mov r0, r8
007871b4  7c 1c ee eb                                      bl #0x30e3ac
007871b8  09 10 a0 e1                                      mov r1, sb
007871bc  02 81 c0 e3                                      bic r8, r0, #0x80000000
007871c0  0a 00 a0 e1                                      mov r0, sl
007871c4  78 1c ee eb                                      bl #0x30e3ac
007871c8  02 11 c0 e3                                      bic r1, r0, #0x80000000
007871cc  08 00 a0 e1                                      mov r0, r8
007871d0  73 1e ee eb                                      bl #0x30eba4
007871d4  00 10 a0 e1                                      mov r1, r0
007871d8  08 00 94 e5                                      ldr r0, [r4, #8]
007871dc  45 1c ee eb                                      bl #0x30e2f8
007871e0  00 00 50 e3                                      cmp r0, #0
007871e4  07 80 a0 e1                                      mov r8, r7
007871e8  06 a0 a0 e1                                      mov sl, r6
007871ec  9c ff ff 1a                                      bne #0x787064
007871f0  b4 ff ff ea                                      b #0x7870c8

; FUNCTION 0x00787fc8, declared_size=116, range_size=116, mode=arm
; class-group: gameswf::final_shape
; alias: _ZN7gameswf11final_shapeD1Ev
; demangled: gameswf::final_shape::~final_shape()
; decoder-mode: arm
00787fc8  70 40 2d e9                                      push {r4, r5, r6, lr}
00787fcc  20 20 90 e5                                      ldr r2, [r0, #0x20]
00787fd0  00 40 a0 e1                                      mov r4, r0
00787fd4  1c 00 80 e2                                      add r0, r0, #0x1c
00787fd8  00 00 52 e3                                      cmp r2, #0
00787fdc  0b 00 00 da                                      ble #0x788010
00787fe0  00 50 a0 e3                                      mov r5, #0
00787fe4  05 10 a0 e1                                      mov r1, r5
00787fe8  0c 60 84 e2                                      add r6, r4, #0xc
00787fec  20 50 84 e5                                      str r5, [r4, #0x20]
00787ff0  85 f5 ff eb                                      bl #0x78560c
00787ff4  06 00 a0 e1                                      mov r0, r6
00787ff8  99 fd ff eb                                      bl #0x787664
00787ffc  06 00 a0 e1                                      mov r0, r6
00788000  05 10 a0 e1                                      mov r1, r5
00788004  d4 f5 ff eb                                      bl #0x78575c
00788008  04 00 a0 e1                                      mov r0, r4
0078800c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00788010  f2 ff ff aa                                      bge #0x787fe0
00788014  00 c0 a0 e3                                      mov ip, #0
00788018  82 31 a0 e1                                      lsl r3, r2, #3
0078801c  00 10 90 e5                                      ldr r1, [r0]
00788020  01 20 92 e2                                      adds r2, r2, #1
00788024  03 e0 81 e0                                      add lr, r1, r3
00788028  03 c0 81 e7                                      str ip, [r1, r3]
0078802c  04 c0 8e e5                                      str ip, [lr, #4]
00788030  08 30 83 e2                                      add r3, r3, #8
00788034  f8 ff ff 1a                                      bne #0x78801c
00788038  e8 ff ff ea                                      b #0x787fe0

; FUNCTION 0x007893bc, declared_size=432, range_size=432, mode=arm
; class-group: gameswf::final_shape
; alias: _ZN7gameswf11final_shape5flushEPNS_8mesh_setERNS_19tesselator_accepterE
; demangled: gameswf::final_shape::flush(gameswf::mesh_set*, gameswf::tesselator_accepter&)
; decoder-mode: arm
007893bc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007893c0  02 a0 a0 e1                                      mov sl, r2
007893c4  0c d0 4d e2                                      sub sp, sp, #0xc
007893c8  00 40 a0 e1                                      mov r4, r0
007893cc  02 00 a0 e1                                      mov r0, r2
007893d0  04 10 8d e5                                      str r1, [sp, #4]
007893d4  67 f8 ff eb                                      bl #0x787578
007893d8  38 00 9a e5                                      ldr r0, [sl, #0x38]
007893dc  0a 10 a0 e1                                      mov r1, sl
007893e0  0f 98 00 eb                                      bl #0x7af424
007893e4  34 30 da e5                                      ldrb r3, [sl, #0x34]
007893e8  00 00 53 e3                                      cmp r3, #0
007893ec  4a 00 00 1a                                      bne #0x78951c
007893f0  38 00 9a e5                                      ldr r0, [sl, #0x38]
007893f4  f4 97 00 eb                                      bl #0x7af3cc
007893f8  10 30 94 e5                                      ldr r3, [r4, #0x10]
007893fc  00 00 53 e3                                      cmp r3, #0
00789400  2c 00 00 da                                      ble #0x7894b8
00789404  00 90 a0 e3                                      mov sb, #0
00789408  0c b0 94 e5                                      ldr fp, [r4, #0xc]
0078940c  00 30 d4 e5                                      ldrb r3, [r4]
00789410  09 22 a0 e1                                      lsl r2, sb, #4
00789414  00 20 8d e5                                      str r2, [sp]
00789418  02 80 8b e0                                      add r8, fp, r2
0078941c  00 00 53 e3                                      cmp r3, #0
00789420  04 50 98 e5                                      ldr r5, [r8, #4]
00789424  2d 00 00 0a                                      beq #0x7894e0
00789428  09 62 9b e7                                      ldr r6, [fp, sb, lsl #4]
0078942c  05 70 a0 e1                                      mov r7, r5
00789430  00 00 57 e3                                      cmp r7, #0
00789434  0b 00 00 da                                      ble #0x789468
00789438  00 50 a0 e3                                      mov r5, #0
0078943c  00 00 00 ea                                      b #0x789444
00789440  00 60 98 e5                                      ldr r6, [r8]
00789444  85 11 86 e0                                      add r1, r6, r5, lsl #3
00789448  0a 00 a0 e1                                      mov r0, sl
0078944c  01 50 85 e2                                      add r5, r5, #1
00789450  83 fb ff eb                                      bl #0x788264
00789454  07 00 55 e1                                      cmp r5, r7
00789458  f8 ff ff 1a                                      bne #0x789440
0078945c  00 30 9d e5                                      ldr r3, [sp]
00789460  04 50 98 e5                                      ldr r5, [r8, #4]
00789464  03 60 9b e7                                      ldr r6, [fp, r3]
00789468  01 50 45 e2                                      sub r5, r5, #1
0078946c  85 11 96 e7                                      ldr r1, [r6, r5, lsl #3]
00789470  00 00 96 e5                                      ldr r0, [r6]
00789474  c4 12 ee eb                                      bl #0x30df8c
00789478  00 00 50 e3                                      cmp r0, #0
0078947c  85 51 86 e0                                      add r5, r6, r5, lsl #3
00789480  08 00 00 0a                                      beq #0x7894a8
00789484  04 00 96 e5                                      ldr r0, [r6, #4]
00789488  04 10 95 e5                                      ldr r1, [r5, #4]
0078948c  be 12 ee eb                                      bl #0x30df8c
00789490  00 00 50 e3                                      cmp r0, #0
00789494  03 00 00 0a                                      beq #0x7894a8
00789498  38 00 9a e5                                      ldr r0, [sl, #0x38]
0078949c  c0 97 00 eb                                      bl #0x7af3a4
007894a0  38 00 9a e5                                      ldr r0, [sl, #0x38]
007894a4  c8 97 00 eb                                      bl #0x7af3cc
007894a8  10 30 94 e5                                      ldr r3, [r4, #0x10]
007894ac  01 90 89 e2                                      add sb, sb, #1
007894b0  03 00 59 e1                                      cmp sb, r3
007894b4  d3 ff ff ba                                      blt #0x789408
007894b8  38 00 9a e5                                      ldr r0, [sl, #0x38]
007894bc  b8 97 00 eb                                      bl #0x7af3a4
007894c0  0a 00 a0 e1                                      mov r0, sl
007894c4  04 10 9d e5                                      ldr r1, [sp, #4]
007894c8  04 20 94 e5                                      ldr r2, [r4, #4]
007894cc  71 ff ff eb                                      bl #0x789298
007894d0  0c 00 84 e2                                      add r0, r4, #0xc
007894d4  0c d0 8d e2                                      add sp, sp, #0xc
007894d8  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007894dc  60 f8 ff ea                                      b #0x787664
007894e0  09 62 9b e7                                      ldr r6, [fp, sb, lsl #4]
007894e4  01 70 45 e2                                      sub r7, r5, #1
007894e8  00 00 96 e5                                      ldr r0, [r6]
007894ec  87 11 96 e7                                      ldr r1, [r6, r7, lsl #3]
007894f0  a5 12 ee eb                                      bl #0x30df8c
007894f4  00 00 50 e3                                      cmp r0, #0
007894f8  87 31 86 e0                                      add r3, r6, r7, lsl #3
007894fc  04 00 00 0a                                      beq #0x789514
00789500  04 10 93 e5                                      ldr r1, [r3, #4]
00789504  04 00 96 e5                                      ldr r0, [r6, #4]
00789508  9f 12 ee eb                                      bl #0x30df8c
0078950c  00 00 50 e3                                      cmp r0, #0
00789510  c6 ff ff 1a                                      bne #0x789430
00789514  05 70 a0 e1                                      mov r7, r5
00789518  c4 ff ff ea                                      b #0x789430
0078951c  0a e0 a0 e1                                      mov lr, sl
00789520  03 30 a0 e3                                      mov r3, #3
00789524  04 30 8e e4                                      str r3, [lr], #4
00789528  08 20 9a e5                                      ldr r2, [sl, #8]
0078952c  00 00 52 e3                                      cmp r2, #0
00789530  02 00 00 da                                      ble #0x789540
00789534  00 30 a0 e3                                      mov r3, #0
00789538  08 30 8a e5                                      str r3, [sl, #8]
0078953c  ab ff ff ea                                      b #0x7893f0
00789540  fb ff ff aa                                      bge #0x789534
00789544  12 33 a0 e1                                      lsl r3, r2, r3
00789548  00 00 a0 e3                                      mov r0, #0
0078954c  00 10 9e e5                                      ldr r1, [lr]
00789550  01 20 92 e2                                      adds r2, r2, #1
00789554  03 c0 81 e0                                      add ip, r1, r3
00789558  03 00 81 e7                                      str r0, [r1, r3]
0078955c  04 00 8c e5                                      str r0, [ip, #4]
00789560  08 30 83 e2                                      add r3, r3, #8
00789564  f8 ff ff 1a                                      bne #0x78954c
00789568  f1 ff ff ea                                      b #0x789534

; FUNCTION 0x0078956c, declared_size=1936, range_size=1936, mode=arm
; class-group: gameswf::final_shape
; alias: _ZN7gameswf11final_shape13merge_segmentEPNS0_7segmentE
; demangled: gameswf::final_shape::merge_segment(gameswf::final_shape::segment*)
; decoder-mode: arm
0078956c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00789570  10 20 90 e5                                      ldr r2, [r0, #0x10]
00789574  2c d0 4d e2                                      sub sp, sp, #0x2c
00789578  01 60 a0 e1                                      mov r6, r1
0078957c  00 00 52 e3                                      cmp r2, #0
00789580  14 20 8d e5                                      str r2, [sp, #0x14]
00789584  88 00 00 da                                      ble #0x7897ac
00789588  0c 00 90 e5                                      ldr r0, [r0, #0xc]
0078958c  00 40 a0 e3                                      mov r4, #0
00789590  08 00 8d e5                                      str r0, [sp, #8]
00789594  08 20 9d e5                                      ldr r2, [sp, #8]
00789598  04 32 a0 e1                                      lsl r3, r4, #4
0078959c  03 50 82 e0                                      add r5, r2, r3
007895a0  04 70 95 e5                                      ldr r7, [r5, #4]
007895a4  00 00 57 e3                                      cmp r7, #0
007895a8  7b 00 00 0a                                      beq #0x78979c
007895ac  05 00 56 e1                                      cmp r6, r5
007895b0  79 00 00 0a                                      beq #0x78979c
007895b4  08 20 9d e5                                      ldr r2, [sp, #8]
007895b8  00 09 96 e8                                      ldm r6, {r8, fp}
007895bc  03 90 92 e7                                      ldr sb, [r2, r3]
007895c0  01 a0 4b e2                                      sub sl, fp, #1
007895c4  00 30 99 e5                                      ldr r3, [sb]
007895c8  0c 30 8d e5                                      str r3, [sp, #0xc]
007895cc  8a 21 98 e7                                      ldr r2, [r8, sl, lsl #3]
007895d0  8a 31 a0 e1                                      lsl r3, sl, #3
007895d4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007895d8  02 10 a0 e1                                      mov r1, r2
007895dc  00 20 8d e5                                      str r2, [sp]
007895e0  04 30 8d e5                                      str r3, [sp, #4]
007895e4  68 12 ee eb                                      bl #0x30df8c
007895e8  04 20 9d e5                                      ldr r2, [sp, #4]
007895ec  00 00 50 e3                                      cmp r0, #0
007895f0  24 a0 8d e5                                      str sl, [sp, #0x24]
007895f4  02 20 88 e0                                      add r2, r8, r2
007895f8  18 20 8d e5                                      str r2, [sp, #0x18]
007895fc  6d 00 00 0a                                      beq #0x7897b8
00789600  18 30 9d e5                                      ldr r3, [sp, #0x18]
00789604  04 00 99 e5                                      ldr r0, [sb, #4]
00789608  04 10 93 e5                                      ldr r1, [r3, #4]
0078960c  5e 12 ee eb                                      bl #0x30df8c
00789610  00 00 50 e3                                      cmp r0, #0
00789614  67 00 00 0a                                      beq #0x7897b8
00789618  00 00 5a e3                                      cmp sl, #0
0078961c  02 00 00 0a                                      beq #0x78962c
00789620  08 30 96 e5                                      ldr r3, [r6, #8]
00789624  0a 00 53 e1                                      cmp r3, sl
00789628  93 01 00 ba                                      blt #0x789c7c
0078962c  0b 00 5a e1                                      cmp sl, fp
00789630  09 00 00 da                                      ble #0x78965c
00789634  00 10 a0 e3                                      mov r1, #0
00789638  8b 31 a0 e1                                      lsl r3, fp, #3
0078963c  00 20 96 e5                                      ldr r2, [r6]
00789640  01 b0 8b e2                                      add fp, fp, #1
00789644  0a 00 5b e1                                      cmp fp, sl
00789648  03 00 82 e0                                      add r0, r2, r3
0078964c  03 10 82 e7                                      str r1, [r2, r3]
00789650  04 10 80 e5                                      str r1, [r0, #4]
00789654  08 30 83 e2                                      add r3, r3, #8
00789658  f7 ff ff 1a                                      bne #0x78963c
0078965c  04 a0 86 e5                                      str sl, [r6, #4]
00789660  90 00 95 e8                                      ldm r5, {r4, r7}
00789664  00 00 57 e3                                      cmp r7, #0
00789668  21 00 00 da                                      ble #0x7896f4
0078966c  07 80 9a e0                                      adds r8, sl, r7
00789670  02 00 00 0a                                      beq #0x789680
00789674  08 30 96 e5                                      ldr r3, [r6, #8]
00789678  03 00 58 e1                                      cmp r8, r3
0078967c  8a 01 00 ca                                      bgt #0x789cac
00789680  0a 00 58 e1                                      cmp r8, sl
00789684  0a 00 00 da                                      ble #0x7896b4
00789688  04 30 9d e5                                      ldr r3, [sp, #4]
0078968c  24 20 9d e5                                      ldr r2, [sp, #0x24]
00789690  00 10 a0 e3                                      mov r1, #0
00789694  00 00 96 e5                                      ldr r0, [r6]
00789698  01 20 82 e2                                      add r2, r2, #1
0078969c  08 00 52 e1                                      cmp r2, r8
007896a0  03 c0 80 e0                                      add ip, r0, r3
007896a4  03 10 80 e7                                      str r1, [r0, r3]
007896a8  04 10 8c e5                                      str r1, [ip, #4]
007896ac  08 30 83 e2                                      add r3, r3, #8
007896b0  f7 ff ff 1a                                      bne #0x789694
007896b4  04 80 86 e5                                      str r8, [r6, #4]
007896b8  8a a1 a0 e1                                      lsl sl, sl, #3
007896bc  00 30 a0 e3                                      mov r3, #0
007896c0  83 01 94 e7                                      ldr r0, [r4, r3, lsl #3]
007896c4  00 20 96 e5                                      ldr r2, [r6]
007896c8  83 11 84 e0                                      add r1, r4, r3, lsl #3
007896cc  01 30 83 e2                                      add r3, r3, #1
007896d0  0a 00 a2 e7                                      str r0, [r2, sl]!
007896d4  04 10 91 e5                                      ldr r1, [r1, #4]
007896d8  07 00 53 e1                                      cmp r3, r7
007896dc  08 a0 8a e2                                      add sl, sl, #8
007896e0  04 10 82 e5                                      str r1, [r2, #4]
007896e4  f5 ff ff 1a                                      bne #0x7896c0
007896e8  04 20 96 e5                                      ldr r2, [r6, #4]
007896ec  24 20 8d e5                                      str r2, [sp, #0x24]
007896f0  04 70 95 e5                                      ldr r7, [r5, #4]
007896f4  24 30 9d e5                                      ldr r3, [sp, #0x24]
007896f8  07 40 a0 e1                                      mov r4, r7
007896fc  00 00 53 e3                                      cmp r3, #0
00789700  03 00 00 0a                                      beq #0x789714
00789704  08 30 95 e5                                      ldr r3, [r5, #8]
00789708  24 20 9d e5                                      ldr r2, [sp, #0x24]
0078970c  02 00 53 e1                                      cmp r3, r2
00789710  6d 01 00 ba                                      blt #0x789ccc
00789714  24 30 9d e5                                      ldr r3, [sp, #0x24]
00789718  03 00 57 e1                                      cmp r7, r3
0078971c  0a 00 00 aa                                      bge #0x78974c
00789720  00 20 a0 e3                                      mov r2, #0
00789724  87 71 a0 e1                                      lsl r7, r7, #3
00789728  03 00 a0 e1                                      mov r0, r3
0078972c  00 30 95 e5                                      ldr r3, [r5]
00789730  01 40 84 e2                                      add r4, r4, #1
00789734  00 00 54 e1                                      cmp r4, r0
00789738  07 10 83 e0                                      add r1, r3, r7
0078973c  07 20 83 e7                                      str r2, [r3, r7]
00789740  04 20 81 e5                                      str r2, [r1, #4]
00789744  08 70 87 e2                                      add r7, r7, #8
00789748  f7 ff ff 1a                                      bne #0x78972c
0078974c  24 20 9d e5                                      ldr r2, [sp, #0x24]
00789750  00 00 52 e3                                      cmp r2, #0
00789754  04 20 85 e5                                      str r2, [r5, #4]
00789758  0d 00 00 da                                      ble #0x789794
0078975c  00 30 a0 e3                                      mov r3, #0
00789760  00 00 96 e5                                      ldr r0, [r6]
00789764  00 20 95 e5                                      ldr r2, [r5]
00789768  83 11 a0 e1                                      lsl r1, r3, #3
0078976c  83 c1 90 e7                                      ldr ip, [r0, r3, lsl #3]
00789770  01 00 80 e0                                      add r0, r0, r1
00789774  01 10 82 e0                                      add r1, r2, r1
00789778  83 c1 82 e7                                      str ip, [r2, r3, lsl #3]
0078977c  04 20 90 e5                                      ldr r2, [r0, #4]
00789780  01 30 83 e2                                      add r3, r3, #1
00789784  04 20 81 e5                                      str r2, [r1, #4]
00789788  04 20 95 e5                                      ldr r2, [r5, #4]
0078978c  02 00 53 e1                                      cmp r3, r2
00789790  f2 ff ff ba                                      blt #0x789760
00789794  01 00 a0 e3                                      mov r0, #1
00789798  04 00 00 ea                                      b #0x7897b0
0078979c  14 30 9d e5                                      ldr r3, [sp, #0x14]
007897a0  01 40 84 e2                                      add r4, r4, #1
007897a4  03 00 54 e1                                      cmp r4, r3
007897a8  79 ff ff 1a                                      bne #0x789594
007897ac  00 00 a0 e3                                      mov r0, #0
007897b0  2c d0 8d e2                                      add sp, sp, #0x2c
007897b4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007897b8  01 30 47 e2                                      sub r3, r7, #1
007897bc  04 30 8d e5                                      str r3, [sp, #4]
007897c0  83 21 99 e7                                      ldr r2, [sb, r3, lsl #3]
007897c4  00 00 9d e5                                      ldr r0, [sp]
007897c8  83 31 a0 e1                                      lsl r3, r3, #3
007897cc  02 10 a0 e1                                      mov r1, r2
007897d0  10 20 8d e5                                      str r2, [sp, #0x10]
007897d4  20 30 8d e5                                      str r3, [sp, #0x20]
007897d8  eb 11 ee eb                                      bl #0x30df8c
007897dc  20 20 9d e5                                      ldr r2, [sp, #0x20]
007897e0  00 00 50 e3                                      cmp r0, #0
007897e4  02 20 89 e0                                      add r2, sb, r2
007897e8  1c 20 8d e5                                      str r2, [sp, #0x1c]
007897ec  5b 00 00 0a                                      beq #0x789960
007897f0  18 30 9d e5                                      ldr r3, [sp, #0x18]
007897f4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
007897f8  04 10 93 e5                                      ldr r1, [r3, #4]
007897fc  04 00 92 e5                                      ldr r0, [r2, #4]
00789800  e1 11 ee eb                                      bl #0x30df8c
00789804  00 00 50 e3                                      cmp r0, #0
00789808  54 00 00 0a                                      beq #0x789960
0078980c  00 00 5a e3                                      cmp sl, #0
00789810  02 00 00 0a                                      beq #0x789820
00789814  08 30 96 e5                                      ldr r3, [r6, #8]
00789818  0a 00 53 e1                                      cmp r3, sl
0078981c  0e 01 00 ba                                      blt #0x789c5c
00789820  0b 00 5a e1                                      cmp sl, fp
00789824  09 00 00 da                                      ble #0x789850
00789828  00 10 a0 e3                                      mov r1, #0
0078982c  8b 31 a0 e1                                      lsl r3, fp, #3
00789830  00 20 96 e5                                      ldr r2, [r6]
00789834  01 b0 8b e2                                      add fp, fp, #1
00789838  0a 00 5b e1                                      cmp fp, sl
0078983c  03 00 82 e0                                      add r0, r2, r3
00789840  03 10 82 e7                                      str r1, [r2, r3]
00789844  04 10 80 e5                                      str r1, [r0, #4]
00789848  08 30 83 e2                                      add r3, r3, #8
0078984c  f7 ff ff 1a                                      bne #0x789830
00789850  01 00 5a e3                                      cmp sl, #1
00789854  04 a0 86 e5                                      str sl, [r6, #4]
00789858  19 00 00 da                                      ble #0x7898c4
0078985c  24 10 9d e5                                      ldr r1, [sp, #0x24]
00789860  00 30 a0 e3                                      mov r3, #0
00789864  00 20 96 e5                                      ldr r2, [r6]
00789868  01 10 41 e2                                      sub r1, r1, #1
0078986c  01 10 63 e0                                      rsb r1, r3, r1
00789870  81 71 92 e7                                      ldr r7, [r2, r1, lsl #3]
00789874  83 01 82 e0                                      add r0, r2, r3, lsl #3
00789878  83 c1 92 e7                                      ldr ip, [r2, r3, lsl #3]
0078987c  04 40 90 e5                                      ldr r4, [r0, #4]
00789880  81 11 82 e0                                      add r1, r2, r1, lsl #3
00789884  83 71 82 e7                                      str r7, [r2, r3, lsl #3]
00789888  04 20 91 e5                                      ldr r2, [r1, #4]
0078988c  04 20 80 e5                                      str r2, [r0, #4]
00789890  04 10 96 e5                                      ldr r1, [r6, #4]
00789894  00 20 96 e5                                      ldr r2, [r6]
00789898  01 10 41 e2                                      sub r1, r1, #1
0078989c  01 10 63 e0                                      rsb r1, r3, r1
007898a0  81 01 82 e0                                      add r0, r2, r1, lsl #3
007898a4  04 40 80 e5                                      str r4, [r0, #4]
007898a8  81 c1 82 e7                                      str ip, [r2, r1, lsl #3]
007898ac  04 10 96 e5                                      ldr r1, [r6, #4]
007898b0  01 30 83 e2                                      add r3, r3, #1
007898b4  a1 2f 81 e0                                      add r2, r1, r1, lsr #31
007898b8  c2 00 53 e1                                      cmp r3, r2, asr #1
007898bc  e8 ff ff ba                                      blt #0x789864
007898c0  24 10 8d e5                                      str r1, [sp, #0x24]
007898c4  24 30 9d e5                                      ldr r3, [sp, #0x24]
007898c8  00 40 96 e5                                      ldr r4, [r6]
007898cc  00 00 53 e3                                      cmp r3, #0
007898d0  af ff ff da                                      ble #0x789794
007898d4  04 70 95 e5                                      ldr r7, [r5, #4]
007898d8  07 60 93 e0                                      adds r6, r3, r7
007898dc  02 00 00 0a                                      beq #0x7898ec
007898e0  08 30 95 e5                                      ldr r3, [r5, #8]
007898e4  03 00 56 e1                                      cmp r6, r3
007898e8  eb 00 00 ca                                      bgt #0x789c9c
007898ec  06 00 57 e1                                      cmp r7, r6
007898f0  87 11 a0 a1                                      lslge r1, r7, #3
007898f4  0a 00 00 aa                                      bge #0x789924
007898f8  87 11 a0 e1                                      lsl r1, r7, #3
007898fc  00 00 a0 e3                                      mov r0, #0
00789900  01 30 a0 e1                                      mov r3, r1
00789904  00 20 95 e5                                      ldr r2, [r5]
00789908  01 70 87 e2                                      add r7, r7, #1
0078990c  06 00 57 e1                                      cmp r7, r6
00789910  03 c0 82 e0                                      add ip, r2, r3
00789914  03 00 82 e7                                      str r0, [r2, r3]
00789918  04 00 8c e5                                      str r0, [ip, #4]
0078991c  08 30 83 e2                                      add r3, r3, #8
00789920  f7 ff ff 1a                                      bne #0x789904
00789924  04 60 85 e5                                      str r6, [r5, #4]
00789928  24 60 9d e5                                      ldr r6, [sp, #0x24]
0078992c  00 30 a0 e3                                      mov r3, #0
00789930  83 c1 94 e7                                      ldr ip, [r4, r3, lsl #3]
00789934  00 20 95 e5                                      ldr r2, [r5]
00789938  83 01 84 e0                                      add r0, r4, r3, lsl #3
0078993c  01 30 83 e2                                      add r3, r3, #1
00789940  01 c0 a2 e7                                      str ip, [r2, r1]!
00789944  04 00 90 e5                                      ldr r0, [r0, #4]
00789948  06 00 53 e1                                      cmp r3, r6
0078994c  08 10 81 e2                                      add r1, r1, #8
00789950  04 00 82 e5                                      str r0, [r2, #4]
00789954  f5 ff ff 1a                                      bne #0x789930
00789958  01 00 a0 e3                                      mov r0, #1
0078995c  93 ff ff ea                                      b #0x7897b0
00789960  00 30 98 e5                                      ldr r3, [r8]
00789964  10 00 9d e5                                      ldr r0, [sp, #0x10]
00789968  03 10 a0 e1                                      mov r1, r3
0078996c  00 30 8d e5                                      str r3, [sp]
00789970  85 11 ee eb                                      bl #0x30df8c
00789974  00 00 50 e3                                      cmp r0, #0
00789978  40 00 00 0a                                      beq #0x789a80
0078997c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00789980  04 10 98 e5                                      ldr r1, [r8, #4]
00789984  04 00 92 e5                                      ldr r0, [r2, #4]
00789988  7f 11 ee eb                                      bl #0x30df8c
0078998c  00 00 50 e3                                      cmp r0, #0
00789990  3a 00 00 0a                                      beq #0x789a80
00789994  04 30 9d e5                                      ldr r3, [sp, #4]
00789998  00 00 53 e3                                      cmp r3, #0
0078999c  03 80 a0 e1                                      mov r8, r3
007899a0  02 00 00 0a                                      beq #0x7899b0
007899a4  08 30 95 e5                                      ldr r3, [r5, #8]
007899a8  08 00 53 e1                                      cmp r3, r8
007899ac  ae 00 00 ba                                      blt #0x789c6c
007899b0  04 20 9d e5                                      ldr r2, [sp, #4]
007899b4  07 00 52 e1                                      cmp r2, r7
007899b8  0a 00 00 da                                      ble #0x7899e8
007899bc  00 10 a0 e3                                      mov r1, #0
007899c0  87 31 a0 e1                                      lsl r3, r7, #3
007899c4  02 c0 a0 e1                                      mov ip, r2
007899c8  00 20 95 e5                                      ldr r2, [r5]
007899cc  01 70 87 e2                                      add r7, r7, #1
007899d0  0c 00 57 e1                                      cmp r7, ip
007899d4  03 00 82 e0                                      add r0, r2, r3
007899d8  03 10 82 e7                                      str r1, [r2, r3]
007899dc  04 10 80 e5                                      str r1, [r0, #4]
007899e0  08 30 83 e2                                      add r3, r3, #8
007899e4  f7 ff ff 1a                                      bne #0x7899c8
007899e8  04 30 9d e5                                      ldr r3, [sp, #4]
007899ec  04 30 85 e5                                      str r3, [r5, #4]
007899f0  90 00 96 e8                                      ldm r6, {r4, r7}
007899f4  00 00 57 e3                                      cmp r7, #0
007899f8  65 ff ff da                                      ble #0x789794
007899fc  07 60 93 e0                                      adds r6, r3, r7
00789a00  02 00 00 0a                                      beq #0x789a10
00789a04  08 30 95 e5                                      ldr r3, [r5, #8]
00789a08  03 00 56 e1                                      cmp r6, r3
00789a0c  9e 00 00 ca                                      bgt #0x789c8c
00789a10  04 20 9d e5                                      ldr r2, [sp, #4]
00789a14  02 00 56 e1                                      cmp r6, r2
00789a18  09 00 00 da                                      ble #0x789a44
00789a1c  20 30 9d e5                                      ldr r3, [sp, #0x20]
00789a20  00 10 a0 e3                                      mov r1, #0
00789a24  00 00 95 e5                                      ldr r0, [r5]
00789a28  01 20 82 e2                                      add r2, r2, #1
00789a2c  06 00 52 e1                                      cmp r2, r6
00789a30  03 c0 80 e0                                      add ip, r0, r3
00789a34  03 10 80 e7                                      str r1, [r0, r3]
00789a38  04 10 8c e5                                      str r1, [ip, #4]
00789a3c  08 30 83 e2                                      add r3, r3, #8
00789a40  f7 ff ff 1a                                      bne #0x789a24
00789a44  04 60 85 e5                                      str r6, [r5, #4]
00789a48  88 81 a0 e1                                      lsl r8, r8, #3
00789a4c  00 30 a0 e3                                      mov r3, #0
00789a50  83 01 94 e7                                      ldr r0, [r4, r3, lsl #3]
00789a54  00 20 95 e5                                      ldr r2, [r5]
00789a58  83 11 84 e0                                      add r1, r4, r3, lsl #3
00789a5c  01 30 83 e2                                      add r3, r3, #1
00789a60  08 00 a2 e7                                      str r0, [r2, r8]!
00789a64  04 10 91 e5                                      ldr r1, [r1, #4]
00789a68  07 00 53 e1                                      cmp r3, r7
00789a6c  08 80 88 e2                                      add r8, r8, #8
00789a70  04 10 82 e5                                      str r1, [r2, #4]
00789a74  f5 ff ff 1a                                      bne #0x789a50
00789a78  01 00 a0 e3                                      mov r0, #1
00789a7c  4b ff ff ea                                      b #0x7897b0
00789a80  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00789a84  00 10 9d e5                                      ldr r1, [sp]
00789a88  3f 11 ee eb                                      bl #0x30df8c
00789a8c  00 00 50 e3                                      cmp r0, #0
00789a90  41 ff ff 0a                                      beq #0x78979c
00789a94  04 00 99 e5                                      ldr r0, [sb, #4]
00789a98  04 10 98 e5                                      ldr r1, [r8, #4]
00789a9c  3a 11 ee eb                                      bl #0x30df8c
00789aa0  00 00 50 e3                                      cmp r0, #0
00789aa4  3c ff ff 0a                                      beq #0x78979c
00789aa8  01 00 5b e3                                      cmp fp, #1
00789aac  1a 00 00 da                                      ble #0x789b1c
00789ab0  00 30 a0 e3                                      mov r3, #0
00789ab4  0a 10 a0 e1                                      mov r1, sl
00789ab8  00 00 00 ea                                      b #0x789ac0
00789abc  00 80 96 e5                                      ldr r8, [r6]
00789ac0  01 10 63 e0                                      rsb r1, r3, r1
00789ac4  81 c1 98 e7                                      ldr ip, [r8, r1, lsl #3]
00789ac8  83 21 88 e0                                      add r2, r8, r3, lsl #3
00789acc  83 01 98 e7                                      ldr r0, [r8, r3, lsl #3]
00789ad0  04 40 92 e5                                      ldr r4, [r2, #4]
00789ad4  81 11 88 e0                                      add r1, r8, r1, lsl #3
00789ad8  83 c1 88 e7                                      str ip, [r8, r3, lsl #3]
00789adc  04 10 91 e5                                      ldr r1, [r1, #4]
00789ae0  04 10 82 e5                                      str r1, [r2, #4]
00789ae4  04 10 96 e5                                      ldr r1, [r6, #4]
00789ae8  00 20 96 e5                                      ldr r2, [r6]
00789aec  01 10 41 e2                                      sub r1, r1, #1
00789af0  01 10 63 e0                                      rsb r1, r3, r1
00789af4  81 c1 82 e0                                      add ip, r2, r1, lsl #3
00789af8  04 40 8c e5                                      str r4, [ip, #4]
00789afc  81 01 82 e7                                      str r0, [r2, r1, lsl #3]
00789b00  04 b0 96 e5                                      ldr fp, [r6, #4]
00789b04  01 30 83 e2                                      add r3, r3, #1
00789b08  ab 2f 8b e0                                      add r2, fp, fp, lsr #31
00789b0c  01 10 4b e2                                      sub r1, fp, #1
00789b10  c2 00 53 e1                                      cmp r3, r2, asr #1
00789b14  e8 ff ff ba                                      blt #0x789abc
00789b18  01 a0 a0 e1                                      mov sl, r1
00789b1c  00 00 5a e3                                      cmp sl, #0
00789b20  0a 80 a0 e1                                      mov r8, sl
00789b24  02 00 00 0a                                      beq #0x789b34
00789b28  08 30 96 e5                                      ldr r3, [r6, #8]
00789b2c  03 00 5a e1                                      cmp sl, r3
00789b30  69 00 00 ca                                      bgt #0x789cdc
00789b34  04 a0 86 e5                                      str sl, [r6, #4]
00789b38  90 00 95 e8                                      ldm r5, {r4, r7}
00789b3c  00 00 57 e3                                      cmp r7, #0
00789b40  20 00 00 da                                      ble #0x789bc8
00789b44  07 80 9a e0                                      adds r8, sl, r7
00789b48  02 00 00 0a                                      beq #0x789b58
00789b4c  08 30 96 e5                                      ldr r3, [r6, #8]
00789b50  03 00 58 e1                                      cmp r8, r3
00789b54  58 00 00 ca                                      bgt #0x789cbc
00789b58  08 00 5a e1                                      cmp sl, r8
00789b5c  8a 11 a0 a1                                      lslge r1, sl, #3
00789b60  0a 00 00 aa                                      bge #0x789b90
00789b64  8a 11 a0 e1                                      lsl r1, sl, #3
00789b68  00 00 a0 e3                                      mov r0, #0
00789b6c  01 30 a0 e1                                      mov r3, r1
00789b70  00 20 96 e5                                      ldr r2, [r6]
00789b74  01 a0 8a e2                                      add sl, sl, #1
00789b78  0a 00 58 e1                                      cmp r8, sl
00789b7c  03 c0 82 e0                                      add ip, r2, r3
00789b80  03 00 82 e7                                      str r0, [r2, r3]
00789b84  04 00 8c e5                                      str r0, [ip, #4]
00789b88  08 30 83 e2                                      add r3, r3, #8
00789b8c  f7 ff ff ca                                      bgt #0x789b70
00789b90  04 80 86 e5                                      str r8, [r6, #4]
00789b94  00 30 a0 e3                                      mov r3, #0
00789b98  83 c1 94 e7                                      ldr ip, [r4, r3, lsl #3]
00789b9c  00 20 96 e5                                      ldr r2, [r6]
00789ba0  83 01 84 e0                                      add r0, r4, r3, lsl #3
00789ba4  01 30 83 e2                                      add r3, r3, #1
00789ba8  01 c0 a2 e7                                      str ip, [r2, r1]!
00789bac  04 00 90 e5                                      ldr r0, [r0, #4]
00789bb0  07 00 53 e1                                      cmp r3, r7
00789bb4  08 10 81 e2                                      add r1, r1, #8
00789bb8  04 00 82 e5                                      str r0, [r2, #4]
00789bbc  f5 ff ff 1a                                      bne #0x789b98
00789bc0  04 80 96 e5                                      ldr r8, [r6, #4]
00789bc4  04 70 95 e5                                      ldr r7, [r5, #4]
00789bc8  00 00 58 e3                                      cmp r8, #0
00789bcc  07 40 a0 e1                                      mov r4, r7
00789bd0  02 00 00 0a                                      beq #0x789be0
00789bd4  08 30 95 e5                                      ldr r3, [r5, #8]
00789bd8  08 00 53 e1                                      cmp r3, r8
00789bdc  42 00 00 ba                                      blt #0x789cec
00789be0  08 00 57 e1                                      cmp r7, r8
00789be4  09 00 00 aa                                      bge #0x789c10
00789be8  00 20 a0 e3                                      mov r2, #0
00789bec  87 71 a0 e1                                      lsl r7, r7, #3
00789bf0  00 30 95 e5                                      ldr r3, [r5]
00789bf4  01 40 84 e2                                      add r4, r4, #1
00789bf8  08 00 54 e1                                      cmp r4, r8
00789bfc  07 10 83 e0                                      add r1, r3, r7
00789c00  07 20 83 e7                                      str r2, [r3, r7]
00789c04  04 20 81 e5                                      str r2, [r1, #4]
00789c08  08 70 87 e2                                      add r7, r7, #8
00789c0c  f7 ff ff 1a                                      bne #0x789bf0
00789c10  00 00 58 e3                                      cmp r8, #0
00789c14  04 80 85 e5                                      str r8, [r5, #4]
00789c18  dd fe ff da                                      ble #0x789794
00789c1c  00 30 a0 e3                                      mov r3, #0
00789c20  00 00 96 e5                                      ldr r0, [r6]
00789c24  00 20 95 e5                                      ldr r2, [r5]
00789c28  83 11 a0 e1                                      lsl r1, r3, #3
00789c2c  83 c1 90 e7                                      ldr ip, [r0, r3, lsl #3]
00789c30  01 00 80 e0                                      add r0, r0, r1
00789c34  01 10 82 e0                                      add r1, r2, r1
00789c38  83 c1 82 e7                                      str ip, [r2, r3, lsl #3]
00789c3c  04 20 90 e5                                      ldr r2, [r0, #4]
00789c40  01 30 83 e2                                      add r3, r3, #1
00789c44  04 20 81 e5                                      str r2, [r1, #4]
00789c48  04 20 95 e5                                      ldr r2, [r5, #4]
00789c4c  02 00 53 e1                                      cmp r3, r2
00789c50  f2 ff ff ba                                      blt #0x789c20
00789c54  01 00 a0 e3                                      mov r0, #1
00789c58  d4 fe ff ea                                      b #0x7897b0
00789c5c  06 00 a0 e1                                      mov r0, r6
00789c60  ca 10 8a e0                                      add r1, sl, sl, asr #1
00789c64  68 ee ff eb                                      bl #0x78560c
00789c68  ec fe ff ea                                      b #0x789820
00789c6c  05 00 a0 e1                                      mov r0, r5
00789c70  c8 10 88 e0                                      add r1, r8, r8, asr #1
00789c74  64 ee ff eb                                      bl #0x78560c
00789c78  4c ff ff ea                                      b #0x7899b0
00789c7c  06 00 a0 e1                                      mov r0, r6
00789c80  ca 10 8a e0                                      add r1, sl, sl, asr #1
00789c84  60 ee ff eb                                      bl #0x78560c
00789c88  67 fe ff ea                                      b #0x78962c
00789c8c  05 00 a0 e1                                      mov r0, r5
00789c90  c6 10 86 e0                                      add r1, r6, r6, asr #1
00789c94  5c ee ff eb                                      bl #0x78560c
00789c98  5c ff ff ea                                      b #0x789a10
00789c9c  05 00 a0 e1                                      mov r0, r5
00789ca0  c6 10 86 e0                                      add r1, r6, r6, asr #1
00789ca4  58 ee ff eb                                      bl #0x78560c
00789ca8  0f ff ff ea                                      b #0x7898ec
00789cac  06 00 a0 e1                                      mov r0, r6
00789cb0  c8 10 88 e0                                      add r1, r8, r8, asr #1
00789cb4  54 ee ff eb                                      bl #0x78560c
00789cb8  70 fe ff ea                                      b #0x789680
00789cbc  06 00 a0 e1                                      mov r0, r6
00789cc0  c8 10 88 e0                                      add r1, r8, r8, asr #1
00789cc4  50 ee ff eb                                      bl #0x78560c
00789cc8  a2 ff ff ea                                      b #0x789b58
00789ccc  05 00 a0 e1                                      mov r0, r5
00789cd0  c2 10 82 e0                                      add r1, r2, r2, asr #1
00789cd4  4c ee ff eb                                      bl #0x78560c
00789cd8  8d fe ff ea                                      b #0x789714
00789cdc  06 00 a0 e1                                      mov r0, r6
00789ce0  ca 10 8a e0                                      add r1, sl, sl, asr #1
00789ce4  48 ee ff eb                                      bl #0x78560c
00789ce8  91 ff ff ea                                      b #0x789b34
00789cec  05 00 a0 e1                                      mov r0, r5
00789cf0  c8 10 88 e0                                      add r1, r8, r8, asr #1
00789cf4  44 ee ff eb                                      bl #0x78560c
00789cf8  b8 ff ff ea                                      b #0x789be0

; FUNCTION 0x00789cfc, declared_size=156, range_size=156, mode=arm
; class-group: gameswf::final_shape
; alias: _ZN7gameswf11final_shape8end_pathEv
; demangled: gameswf::final_shape::end_path()
; decoder-mode: arm
00789cfc  70 40 2d e9                                      push {r4, r5, r6, lr}
00789d00  20 30 90 e5                                      ldr r3, [r0, #0x20]
00789d04  00 50 a0 e1                                      mov r5, r0
00789d08  00 00 53 e3                                      cmp r3, #0
00789d0c  0c 00 00 0a                                      beq #0x789d44
00789d10  00 30 d0 e5                                      ldrb r3, [r0]
00789d14  00 00 53 e3                                      cmp r3, #0
00789d18  0a 00 00 1a                                      bne #0x789d48
00789d1c  1c 40 80 e2                                      add r4, r0, #0x1c
00789d20  04 10 a0 e1                                      mov r1, r4
00789d24  10 fe ff eb                                      bl #0x78956c
00789d28  00 00 50 e3                                      cmp r0, #0
00789d2c  0a 00 00 0a                                      beq #0x789d5c
00789d30  20 20 95 e5                                      ldr r2, [r5, #0x20]
00789d34  00 00 52 e3                                      cmp r2, #0
00789d38  0b 00 00 da                                      ble #0x789d6c
00789d3c  00 30 a0 e3                                      mov r3, #0
00789d40  20 30 85 e5                                      str r3, [r5, #0x20]
00789d44  70 80 bd e8                                      pop {r4, r5, r6, pc}
00789d48  1c 40 80 e2                                      add r4, r0, #0x1c
00789d4c  04 10 a0 e1                                      mov r1, r4
00789d50  0c 00 80 e2                                      add r0, r0, #0xc
00789d54  64 f8 ff eb                                      bl #0x787eec
00789d58  f4 ff ff ea                                      b #0x789d30
00789d5c  0c 00 85 e2                                      add r0, r5, #0xc
00789d60  04 10 a0 e1                                      mov r1, r4
00789d64  60 f8 ff eb                                      bl #0x787eec
00789d68  f0 ff ff ea                                      b #0x789d30
00789d6c  f2 ff ff aa                                      bge #0x789d3c
00789d70  00 00 a0 e3                                      mov r0, #0
00789d74  82 31 a0 e1                                      lsl r3, r2, #3
00789d78  00 10 94 e5                                      ldr r1, [r4]
00789d7c  01 20 92 e2                                      adds r2, r2, #1
00789d80  03 c0 81 e0                                      add ip, r1, r3
00789d84  03 00 81 e7                                      str r0, [r1, r3]
00789d88  04 00 8c e5                                      str r0, [ip, #4]
00789d8c  08 30 83 e2                                      add r3, r3, #8
00789d90  f8 ff ff 1a                                      bne #0x789d78
00789d94  e8 ff ff ea                                      b #0x789d3c
