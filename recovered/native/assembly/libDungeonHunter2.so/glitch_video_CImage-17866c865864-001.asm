; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005ff638, declared_size=72, range_size=72, mode=arm
; class-group: glitch::video::CImage
; alias: _ZNK6glitch5video6CImage12getDimensionEj
; demangled: glitch::video::CImage::getDimension(unsigned int) const
; decoder-mode: arm
005ff638  10 30 91 e5                                      ldr r3, [r1, #0x10]
005ff63c  00 30 80 e5                                      str r3, [r0]
005ff640  14 10 91 e5                                      ldr r1, [r1, #0x14]
005ff644  00 00 53 e3                                      cmp r3, #0
005ff648  04 10 80 e5                                      str r1, [r0, #4]
005ff64c  03 00 00 da                                      ble #0x5ff660
005ff650  33 32 a0 e1                                      lsr r3, r3, r2
005ff654  01 00 53 e3                                      cmp r3, #1
005ff658  01 30 a0 33                                      movlo r3, #1
005ff65c  00 30 80 e5                                      str r3, [r0]
005ff660  04 30 90 e5                                      ldr r3, [r0, #4]
005ff664  00 00 53 e3                                      cmp r3, #0
005ff668  1e ff 2f d1                                      bxle lr
005ff66c  33 32 a0 e1                                      lsr r3, r3, r2
005ff670  01 00 53 e3                                      cmp r3, #1
005ff674  01 30 a0 33                                      movlo r3, #1
005ff678  04 30 80 e5                                      str r3, [r0, #4]
005ff67c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005ff680, declared_size=392, range_size=392, mode=arm
; class-group: glitch::video::CImage
; alias: _ZN6glitch5video6CImage8setPixelEjjRKNS0_6SColorE
; demangled: glitch::video::CImage::setPixel(unsigned int, unsigned int, glitch::video::SColor const&)
; decoder-mode: arm
005ff680  f0 00 2d e9                                      push {r4, r5, r6, r7}
005ff684  10 c0 90 e5                                      ldr ip, [r0, #0x10]
005ff688  08 d0 4d e2                                      sub sp, sp, #8
005ff68c  01 00 5c e1                                      cmp ip, r1
005ff690  23 00 00 9a                                      bls #0x5ff724
005ff694  14 c0 90 e5                                      ldr ip, [r0, #0x14]
005ff698  02 00 5c e1                                      cmp ip, r2
005ff69c  20 00 00 9a                                      bls #0x5ff724
005ff6a0  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005ff6a4  02 c0 4c e2                                      sub ip, ip, #2
005ff6a8  0c 00 5c e3                                      cmp ip, #0xc
005ff6ac  0c f1 8f 90                                      addls pc, pc, ip, lsl #2
005ff6b0  1b 00 00 ea                                      b #0x5ff724
005ff6b4  4d 00 00 ea                                      b #0x5ff7f0
005ff6b8  19 00 00 ea                                      b #0x5ff724
005ff6bc  18 00 00 ea                                      b #0x5ff724
005ff6c0  3c 00 00 ea                                      b #0x5ff7b8
005ff6c4  16 00 00 ea                                      b #0x5ff724
005ff6c8  15 00 00 ea                                      b #0x5ff724
005ff6cc  28 00 00 ea                                      b #0x5ff774
005ff6d0  13 00 00 ea                                      b #0x5ff724
005ff6d4  1a 00 00 ea                                      b #0x5ff744
005ff6d8  11 00 00 ea                                      b #0x5ff724
005ff6dc  13 00 00 ea                                      b #0x5ff730
005ff6e0  0f 00 00 ea                                      b #0x5ff724
005ff6e4  ff ff ff ea                                      b #0x5ff6e8
005ff6e8  03 70 d3 e5                                      ldrb r7, [r3, #3]
005ff6ec  00 60 d3 e5                                      ldrb r6, [r3]
005ff6f0  01 50 d3 e5                                      ldrb r5, [r3, #1]
005ff6f4  02 40 d3 e5                                      ldrb r4, [r3, #2]
005ff6f8  18 c0 90 e5                                      ldr ip, [r0, #0x18]
005ff6fc  05 30 8d e2                                      add r3, sp, #5
005ff700  02 70 c3 e5                                      strb r7, [r3, #2]
005ff704  01 11 a0 e1                                      lsl r1, r1, #2
005ff708  04 60 cd e5                                      strb r6, [sp, #4]
005ff70c  05 50 cd e5                                      strb r5, [sp, #5]
005ff710  01 40 c3 e5                                      strb r4, [r3, #1]
005ff714  9c 12 22 e0                                      mla r2, ip, r2, r1
005ff718  08 30 90 e5                                      ldr r3, [r0, #8]
005ff71c  04 10 9d e5                                      ldr r1, [sp, #4]
005ff720  02 10 83 e7                                      str r1, [r3, r2]
005ff724  08 d0 8d e2                                      add sp, sp, #8
005ff728  f0 00 bd e8                                      pop {r4, r5, r6, r7}
005ff72c  1e ff 2f e1                                      bx lr
005ff730  02 70 d3 e5                                      ldrb r7, [r3, #2]
005ff734  03 60 d3 e5                                      ldrb r6, [r3, #3]
005ff738  00 50 d3 e5                                      ldrb r5, [r3]
005ff73c  01 40 d3 e5                                      ldrb r4, [r3, #1]
005ff740  ec ff ff ea                                      b #0x5ff6f8
005ff744  18 40 90 e5                                      ldr r4, [r0, #0x18]
005ff748  81 10 81 e0                                      add r1, r1, r1, lsl #1
005ff74c  08 c0 90 e5                                      ldr ip, [r0, #8]
005ff750  94 12 22 e0                                      mla r2, r4, r2, r1
005ff754  00 10 d3 e5                                      ldrb r1, [r3]
005ff758  02 00 8c e0                                      add r0, ip, r2
005ff75c  02 10 cc e7                                      strb r1, [ip, r2]
005ff760  01 20 d3 e5                                      ldrb r2, [r3, #1]
005ff764  01 20 c0 e5                                      strb r2, [r0, #1]
005ff768  02 30 d3 e5                                      ldrb r3, [r3, #2]
005ff76c  02 30 c0 e5                                      strb r3, [r0, #2]
005ff770  eb ff ff ea                                      b #0x5ff724
005ff774  00 70 d3 e5                                      ldrb r7, [r3]
005ff778  03 40 d3 e5                                      ldrb r4, [r3, #3]
005ff77c  08 50 90 e5                                      ldr r5, [r0, #8]
005ff780  18 60 90 e5                                      ldr r6, [r0, #0x18]
005ff784  01 c0 d3 e5                                      ldrb ip, [r3, #1]
005ff788  02 00 d3 e5                                      ldrb r0, [r3, #2]
005ff78c  f8 70 07 e2                                      and r7, r7, #0xf8
005ff790  80 40 04 e2                                      and r4, r4, #0x80
005ff794  87 33 a0 e1                                      lsl r3, r7, #7
005ff798  04 34 83 e1                                      orr r3, r3, r4, lsl #8
005ff79c  96 52 22 e0                                      mla r2, r6, r2, r5
005ff7a0  a0 01 83 e1                                      orr r0, r3, r0, lsr #3
005ff7a4  f8 30 0c e2                                      and r3, ip, #0xf8
005ff7a8  03 31 80 e1                                      orr r3, r0, r3, lsl #2
005ff7ac  81 10 a0 e1                                      lsl r1, r1, #1
005ff7b0  b1 30 82 e1                                      strh r3, [r2, r1]
005ff7b4  da ff ff ea                                      b #0x5ff724
005ff7b8  01 60 d3 e5                                      ldrb r6, [r3, #1]
005ff7bc  08 40 90 e5                                      ldr r4, [r0, #8]
005ff7c0  18 50 90 e5                                      ldr r5, [r0, #0x18]
005ff7c4  00 c0 d3 e5                                      ldrb ip, [r3]
005ff7c8  02 00 d3 e5                                      ldrb r0, [r3, #2]
005ff7cc  fc 30 06 e2                                      and r3, r6, #0xfc
005ff7d0  95 42 22 e0                                      mla r2, r5, r2, r4
005ff7d4  f8 c0 0c e2                                      and ip, ip, #0xf8
005ff7d8  83 31 a0 e1                                      lsl r3, r3, #3
005ff7dc  0c 34 83 e1                                      orr r3, r3, ip, lsl #8
005ff7e0  a0 31 83 e1                                      orr r3, r3, r0, lsr #3
005ff7e4  81 10 a0 e1                                      lsl r1, r1, #1
005ff7e8  b1 30 82 e1                                      strh r3, [r2, r1]
005ff7ec  cc ff ff ea                                      b #0x5ff724
005ff7f0  08 c0 90 e5                                      ldr ip, [r0, #8]
005ff7f4  18 00 90 e5                                      ldr r0, [r0, #0x18]
005ff7f8  03 30 d3 e5                                      ldrb r3, [r3, #3]
005ff7fc  90 c2 22 e0                                      mla r2, r0, r2, ip
005ff800  01 30 c2 e7                                      strb r3, [r2, r1]
005ff804  c6 ff ff ea                                      b #0x5ff724

; FUNCTION 0x005ff808, declared_size=428, range_size=428, mode=arm
; class-group: glitch::video::CImage
; alias: _ZNK6glitch5video6CImage8getPixelEjj
; demangled: glitch::video::CImage::getPixel(unsigned int, unsigned int) const
; decoder-mode: arm
005ff808  30 00 2d e9                                      push {r4, r5}
005ff80c  10 30 90 e5                                      ldr r3, [r0, #0x10]
005ff810  08 d0 4d e2                                      sub sp, sp, #8
005ff814  01 00 53 e1                                      cmp r3, r1
005ff818  13 00 00 9a                                      bls #0x5ff86c
005ff81c  14 c0 90 e5                                      ldr ip, [r0, #0x14]
005ff820  02 00 5c e1                                      cmp ip, r2
005ff824  10 00 00 9a                                      bls #0x5ff86c
005ff828  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005ff82c  02 c0 4c e2                                      sub ip, ip, #2
005ff830  0b 00 5c e3                                      cmp ip, #0xb
005ff834  0c f1 8f 90                                      addls pc, pc, ip, lsl #2
005ff838  0b 00 00 ea                                      b #0x5ff86c
005ff83c  55 00 00 ea                                      b #0x5ff998
005ff840  09 00 00 ea                                      b #0x5ff86c
005ff844  08 00 00 ea                                      b #0x5ff86c
005ff848  45 00 00 ea                                      b #0x5ff964
005ff84c  06 00 00 ea                                      b #0x5ff86c
005ff850  05 00 00 ea                                      b #0x5ff86c
005ff854  29 00 00 ea                                      b #0x5ff900
005ff858  03 00 00 ea                                      b #0x5ff86c
005ff85c  1e 00 00 ea                                      b #0x5ff8dc
005ff860  01 00 00 ea                                      b #0x5ff86c
005ff864  14 00 00 ea                                      b #0x5ff8bc
005ff868  0b 00 00 ea                                      b #0x5ff89c
005ff86c  00 20 a0 e3                                      mov r2, #0
005ff870  02 c0 a0 e1                                      mov ip, r2
005ff874  02 40 a0 e1                                      mov r4, r2
005ff878  02 50 a0 e1                                      mov r5, r2
005ff87c  00 00 a0 e3                                      mov r0, #0
005ff880  15 00 c7 e7                                      bfi r0, r5, #0, #8
005ff884  14 04 cf e7                                      bfi r0, r4, #8, #8
005ff888  1c 08 d7 e7                                      bfi r0, ip, #0x10, #8
005ff88c  12 0c df e7                                      bfi r0, r2, #0x18, #8
005ff890  08 d0 8d e2                                      add sp, sp, #8
005ff894  30 00 bd e8                                      pop {r4, r5}
005ff898  1e ff 2f e1                                      bx lr
005ff89c  93 12 23 e0                                      mla r3, r3, r2, r1
005ff8a0  08 00 90 e5                                      ldr r0, [r0, #8]
005ff8a4  03 41 90 e7                                      ldr r4, [r0, r3, lsl #2]
005ff8a8  74 c0 ef e6                                      uxtb ip, r4
005ff8ac  24 2c a0 e1                                      lsr r2, r4, #0x18
005ff8b0  54 58 e7 e7                                      ubfx r5, r4, #0x10, #8
005ff8b4  54 44 e7 e7                                      ubfx r4, r4, #8, #8
005ff8b8  ef ff ff ea                                      b #0x5ff87c
005ff8bc  93 12 23 e0                                      mla r3, r3, r2, r1
005ff8c0  08 00 90 e5                                      ldr r0, [r0, #8]
005ff8c4  03 41 90 e7                                      ldr r4, [r0, r3, lsl #2]
005ff8c8  24 cc a0 e1                                      lsr ip, r4, #0x18
005ff8cc  74 20 ef e6                                      uxtb r2, r4
005ff8d0  54 54 e7 e7                                      ubfx r5, r4, #8, #8
005ff8d4  54 48 e7 e7                                      ubfx r4, r4, #0x10, #8
005ff8d8  e7 ff ff ea                                      b #0x5ff87c
005ff8dc  93 12 23 e0                                      mla r3, r3, r2, r1
005ff8e0  08 c0 90 e5                                      ldr ip, [r0, #8]
005ff8e4  83 30 83 e0                                      add r3, r3, r3, lsl #1
005ff8e8  ff 20 a0 e3                                      mov r2, #0xff
005ff8ec  03 00 8c e0                                      add r0, ip, r3
005ff8f0  03 50 dc e7                                      ldrb r5, [ip, r3]
005ff8f4  01 40 d0 e5                                      ldrb r4, [r0, #1]
005ff8f8  02 c0 d0 e5                                      ldrb ip, [r0, #2]
005ff8fc  de ff ff ea                                      b #0x5ff87c
005ff900  93 12 23 e0                                      mla r3, r3, r2, r1
005ff904  08 00 90 e5                                      ldr r0, [r0, #8]
005ff908  83 30 a0 e1                                      lsl r3, r3, #1
005ff90c  00 40 a0 e3                                      mov r4, #0
005ff910  b3 30 90 e1                                      ldrh r3, [r0, r3]
005ff914  1f 1b 03 e2                                      and r1, r3, #0x7c00
005ff918  02 09 13 e3                                      tst r3, #0x8000
005ff91c  3e 2e 03 e2                                      and r2, r3, #0x3e0
005ff920  c1 03 a0 e1                                      asr r0, r1, #7
005ff924  ff c0 a0 13                                      movne ip, #0xff
005ff928  04 c0 a0 01                                      moveq ip, r4
005ff92c  21 16 80 e1                                      orr r1, r0, r1, lsr #12
005ff930  1c 40 c7 e7                                      bfi r4, ip, #0, #8
005ff934  42 01 a0 e1                                      asr r0, r2, #2
005ff938  11 44 cf e7                                      bfi r4, r1, #8, #8
005ff93c  22 24 80 e1                                      orr r2, r0, r2, lsr #8
005ff940  53 11 e2 e7                                      ubfx r1, r3, #2, #3
005ff944  12 48 d7 e7                                      bfi r4, r2, #0x10, #8
005ff948  83 31 81 e1                                      orr r3, r1, r3, lsl #3
005ff94c  13 4c df e7                                      bfi r4, r3, #0x18, #8
005ff950  24 cc a0 e1                                      lsr ip, r4, #0x18
005ff954  74 20 ef e6                                      uxtb r2, r4
005ff958  54 54 e7 e7                                      ubfx r5, r4, #8, #8
005ff95c  54 48 e7 e7                                      ubfx r4, r4, #0x10, #8
005ff960  c5 ff ff ea                                      b #0x5ff87c
005ff964  93 12 23 e0                                      mla r3, r3, r2, r1
005ff968  08 00 90 e5                                      ldr r0, [r0, #8]
005ff96c  83 30 a0 e1                                      lsl r3, r3, #1
005ff970  ff 40 a0 e3                                      mov r4, #0xff
005ff974  b3 30 90 e1                                      ldrh r3, [r0, r3]
005ff978  7e 2e 03 e2                                      and r2, r3, #0x7e0
005ff97c  a3 16 a0 e1                                      lsr r1, r3, #0xd
005ff980  3e 0b 03 e2                                      and r0, r3, #0xf800
005ff984  20 04 81 e1                                      orr r0, r1, r0, lsr #8
005ff988  42 11 a0 e1                                      asr r1, r2, #2
005ff98c  10 44 cf e7                                      bfi r4, r0, #8, #8
005ff990  22 24 81 e1                                      orr r2, r1, r2, lsr #8
005ff994  e9 ff ff ea                                      b #0x5ff940
005ff998  08 00 90 e5                                      ldr r0, [r0, #8]
005ff99c  00 c0 a0 e3                                      mov ip, #0
005ff9a0  0c 40 a0 e1                                      mov r4, ip
005ff9a4  93 02 23 e0                                      mla r3, r3, r2, r0
005ff9a8  0c 50 a0 e1                                      mov r5, ip
005ff9ac  01 20 d3 e7                                      ldrb r2, [r3, r1]
005ff9b0  b1 ff ff ea                                      b #0x5ff87c

; FUNCTION 0x005ff9b4, declared_size=356, range_size=356, mode=arm
; class-group: glitch::video::CImage
; alias: _ZN6glitch5video6CImage4fillERKNS0_6SColorE
; demangled: glitch::video::CImage::fill(glitch::video::SColor const&)
; decoder-mode: arm
005ff9b4  30 00 2d e9                                      push {r4, r5}
005ff9b8  20 30 90 e5                                      ldr r3, [r0, #0x20]
005ff9bc  08 d0 4d e2                                      sub sp, sp, #8
005ff9c0  05 30 43 e2                                      sub r3, r3, #5
005ff9c4  09 00 53 e3                                      cmp r3, #9
005ff9c8  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
005ff9cc  2d 00 00 ea                                      b #0x5ffa88
005ff9d0  2f 00 00 ea                                      b #0x5ffa94
005ff9d4  2b 00 00 ea                                      b #0x5ffa88
005ff9d8  2a 00 00 ea                                      b #0x5ffa88
005ff9dc  36 00 00 ea                                      b #0x5ffabc
005ff9e0  28 00 00 ea                                      b #0x5ffa88
005ff9e4  27 00 00 ea                                      b #0x5ffa88
005ff9e8  26 00 00 ea                                      b #0x5ffa88
005ff9ec  3f 00 00 ea                                      b #0x5ffaf0
005ff9f0  43 00 00 ea                                      b #0x5ffb04
005ff9f4  ff ff ff ea                                      b #0x5ff9f8
005ff9f8  03 50 d1 e5                                      ldrb r5, [r1, #3]
005ff9fc  00 40 d1 e5                                      ldrb r4, [r1]
005ffa00  01 c0 d1 e5                                      ldrb ip, [r1, #1]
005ffa04  02 20 d1 e5                                      ldrb r2, [r1, #2]
005ffa08  05 30 8d e2                                      add r3, sp, #5
005ffa0c  02 50 c3 e5                                      strb r5, [r3, #2]
005ffa10  04 40 cd e5                                      strb r4, [sp, #4]
005ffa14  05 c0 cd e5                                      strb ip, [sp, #5]
005ffa18  01 20 c3 e5                                      strb r2, [r3, #1]
005ffa1c  04 20 9d e5                                      ldr r2, [sp, #4]
005ffa20  1c c0 90 e5                                      ldr ip, [r0, #0x1c]
005ffa24  08 00 90 e5                                      ldr r0, [r0, #8]
005ffa28  ac 42 b0 e1                                      lsrs r4, ip, #5
005ffa2c  0d 00 00 0a                                      beq #0x5ffa68
005ffa30  04 10 a0 e1                                      mov r1, r4
005ffa34  00 30 a0 e1                                      mov r3, r0
005ffa38  01 10 51 e2                                      subs r1, r1, #1
005ffa3c  00 20 83 e5                                      str r2, [r3]
005ffa40  04 20 83 e5                                      str r2, [r3, #4]
005ffa44  08 20 83 e5                                      str r2, [r3, #8]
005ffa48  0c 20 83 e5                                      str r2, [r3, #0xc]
005ffa4c  10 20 83 e5                                      str r2, [r3, #0x10]
005ffa50  14 20 83 e5                                      str r2, [r3, #0x14]
005ffa54  18 20 83 e5                                      str r2, [r3, #0x18]
005ffa58  1c 20 83 e5                                      str r2, [r3, #0x1c]
005ffa5c  20 30 83 e2                                      add r3, r3, #0x20
005ffa60  f4 ff ff 1a                                      bne #0x5ffa38
005ffa64  84 02 80 e0                                      add r0, r0, r4, lsl #5
005ffa68  5c 31 e2 e7                                      ubfx r3, ip, #2, #3
005ffa6c  00 00 53 e3                                      cmp r3, #0
005ffa70  04 00 00 0a                                      beq #0x5ffa88
005ffa74  00 10 a0 e3                                      mov r1, #0
005ffa78  01 30 53 e2                                      subs r3, r3, #1
005ffa7c  01 20 80 e7                                      str r2, [r0, r1]
005ffa80  04 10 81 e2                                      add r1, r1, #4
005ffa84  fb ff ff 1a                                      bne #0x5ffa78
005ffa88  08 d0 8d e2                                      add sp, sp, #8
005ffa8c  30 00 bd e8                                      pop {r4, r5}
005ffa90  1e ff 2f e1                                      bx lr
005ffa94  01 30 d1 e5                                      ldrb r3, [r1, #1]
005ffa98  00 c0 d1 e5                                      ldrb ip, [r1]
005ffa9c  02 20 d1 e5                                      ldrb r2, [r1, #2]
005ffaa0  fc 30 03 e2                                      and r3, r3, #0xfc
005ffaa4  f8 10 0c e2                                      and r1, ip, #0xf8
005ffaa8  83 31 a0 e1                                      lsl r3, r3, #3
005ffaac  01 34 83 e1                                      orr r3, r3, r1, lsl #8
005ffab0  a2 21 83 e1                                      orr r2, r3, r2, lsr #3
005ffab4  02 28 82 e1                                      orr r2, r2, r2, lsl #16
005ffab8  d8 ff ff ea                                      b #0x5ffa20
005ffabc  00 30 d1 e5                                      ldrb r3, [r1]
005ffac0  03 c0 d1 e5                                      ldrb ip, [r1, #3]
005ffac4  01 20 d1 e5                                      ldrb r2, [r1, #1]
005ffac8  f8 30 03 e2                                      and r3, r3, #0xf8
005ffacc  02 10 d1 e5                                      ldrb r1, [r1, #2]
005ffad0  80 c0 0c e2                                      and ip, ip, #0x80
005ffad4  83 33 a0 e1                                      lsl r3, r3, #7
005ffad8  0c 34 83 e1                                      orr r3, r3, ip, lsl #8
005ffadc  a1 31 83 e1                                      orr r3, r3, r1, lsr #3
005ffae0  f8 20 02 e2                                      and r2, r2, #0xf8
005ffae4  02 21 83 e1                                      orr r2, r3, r2, lsl #2
005ffae8  02 28 82 e1                                      orr r2, r2, r2, lsl #16
005ffaec  cb ff ff ea                                      b #0x5ffa20
005ffaf0  02 50 d1 e5                                      ldrb r5, [r1, #2]
005ffaf4  03 40 d1 e5                                      ldrb r4, [r1, #3]
005ffaf8  00 c0 d1 e5                                      ldrb ip, [r1]
005ffafc  01 20 d1 e5                                      ldrb r2, [r1, #1]
005ffb00  c0 ff ff ea                                      b #0x5ffa08
005ffb04  03 50 d1 e5                                      ldrb r5, [r1, #3]
005ffb08  02 40 d1 e5                                      ldrb r4, [r1, #2]
005ffb0c  01 c0 d1 e5                                      ldrb ip, [r1, #1]
005ffb10  00 20 d1 e5                                      ldrb r2, [r1]
005ffb14  bb ff ff ea                                      b #0x5ffa08

; FUNCTION 0x00600104, declared_size=1508, range_size=1508, mode=arm
; class-group: glitch::video::CImage
; alias: _ZN6glitch5video6CImage8drawLineERKNS_4core10position2dIiEES6_RKNS0_6SColorE
; demangled: glitch::video::CImage::drawLine(glitch::core::position2d<int> const&, glitch::core::position2d<int> const&, glitch::video::SColor const&)
; decoder-mode: arm
00600104  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00600108  1c d0 4d e2                                      sub sp, sp, #0x1c
0060010c  08 00 8d e5                                      str r0, [sp, #8]
00600110  08 50 9d e5                                      ldr r5, [sp, #8]
00600114  10 00 90 e5                                      ldr r0, [r0, #0x10]
00600118  00 40 91 e5                                      ldr r4, [r1]
0060011c  14 b0 95 e5                                      ldr fp, [r5, #0x14]
00600120  01 00 40 e2                                      sub r0, r0, #1
00600124  0c 30 8d e5                                      str r3, [sp, #0xc]
00600128  04 00 8d e5                                      str r0, [sp, #4]
0060012c  00 00 54 e3                                      cmp r4, #0
00600130  01 b0 4b e2                                      sub fp, fp, #1
00600134  04 80 91 e5                                      ldr r8, [r1, #4]
00600138  04 90 92 e5                                      ldr sb, [r2, #4]
0060013c  00 a0 92 e5                                      ldr sl, [r2]
00600140  04 50 a0 b3                                      movlt r5, #4
00600144  03 00 00 ba                                      blt #0x600158
00600148  04 70 9d e5                                      ldr r7, [sp, #4]
0060014c  04 00 57 e1                                      cmp r7, r4
00600150  08 50 a0 b3                                      movlt r5, #8
00600154  00 50 a0 a3                                      movge r5, #0
00600158  00 00 58 e3                                      cmp r8, #0
0060015c  02 50 85 b3                                      orrlt r5, r5, #2
00600160  01 00 00 ba                                      blt #0x60016c
00600164  08 00 5b e1                                      cmp fp, r8
00600168  01 50 85 b3                                      orrlt r5, r5, #1
0060016c  00 00 5a e3                                      cmp sl, #0
00600170  04 70 a0 b3                                      movlt r7, #4
00600174  03 00 00 ba                                      blt #0x600188
00600178  04 c0 9d e5                                      ldr ip, [sp, #4]
0060017c  0a 00 5c e1                                      cmp ip, sl
00600180  08 70 a0 b3                                      movlt r7, #8
00600184  00 70 a0 a3                                      movge r7, #0
00600188  00 00 59 e3                                      cmp sb, #0
0060018c  02 70 87 b3                                      orrlt r7, r7, #2
00600190  1b 00 00 ba                                      blt #0x600204
00600194  09 00 5b e1                                      cmp fp, sb
00600198  01 70 87 b3                                      orrlt r7, r7, #1
0060019c  18 00 00 ea                                      b #0x600204
006001a0  0b 30 68 e0                                      rsb r3, r8, fp
006001a4  0a 00 64 e0                                      rsb r0, r4, sl
006001a8  90 03 00 e0                                      mul r0, r0, r3
006001ac  09 10 68 e0                                      rsb r1, r8, sb
006001b0  3b 38 f4 eb                                      bl #0x30e2a4
006001b4  0b 30 a0 e1                                      mov r3, fp
006001b8  04 20 80 e0                                      add r2, r0, r4
006001bc  06 00 55 e1                                      cmp r5, r6
006001c0  24 00 00 0a                                      beq #0x600258
006001c4  00 00 52 e3                                      cmp r2, #0
006001c8  04 70 a0 b3                                      movlt r7, #4
006001cc  03 00 00 ba                                      blt #0x6001e0
006001d0  04 c0 9d e5                                      ldr ip, [sp, #4]
006001d4  02 00 5c e1                                      cmp ip, r2
006001d8  08 70 a0 b3                                      movlt r7, #8
006001dc  00 70 a0 a3                                      movge r7, #0
006001e0  00 00 53 e3                                      cmp r3, #0
006001e4  28 00 00 aa                                      bge #0x60028c
006001e8  02 a0 a0 e1                                      mov sl, r2
006001ec  03 90 a0 e1                                      mov sb, r3
006001f0  02 70 87 e3                                      orr r7, r7, #2
006001f4  04 20 a0 e1                                      mov r2, r4
006001f8  08 30 a0 e1                                      mov r3, r8
006001fc  02 40 a0 e1                                      mov r4, r2
00600200  03 80 a0 e1                                      mov r8, r3
00600204  05 00 97 e1                                      orrs r0, r7, r5
00600208  31 00 00 0a                                      beq #0x6002d4
0060020c  05 00 17 e1                                      tst r7, r5
00600210  38 00 00 1a                                      bne #0x6002f8
00600214  00 00 55 e3                                      cmp r5, #0
00600218  05 60 a0 11                                      movne r6, r5
0060021c  07 60 a0 01                                      moveq r6, r7
00600220  01 30 16 e2                                      ands r3, r6, #1
00600224  dd ff ff 1a                                      bne #0x6001a0
00600228  02 00 16 e3                                      tst r6, #2
0060022c  1d 00 00 0a                                      beq #0x6002a8
00600230  0a 20 64 e0                                      rsb r2, r4, sl
00600234  00 00 68 e2                                      rsb r0, r8, #0
00600238  90 02 00 e0                                      mul r0, r0, r2
0060023c  09 10 68 e0                                      rsb r1, r8, sb
00600240  00 30 8d e5                                      str r3, [sp]
00600244  16 38 f4 eb                                      bl #0x30e2a4
00600248  06 00 55 e1                                      cmp r5, r6
0060024c  00 30 9d e5                                      ldr r3, [sp]
00600250  04 20 80 e0                                      add r2, r0, r4
00600254  da ff ff 1a                                      bne #0x6001c4
00600258  00 00 52 e3                                      cmp r2, #0
0060025c  04 50 a0 b3                                      movlt r5, #4
00600260  03 00 00 ba                                      blt #0x600274
00600264  04 10 9d e5                                      ldr r1, [sp, #4]
00600268  02 00 51 e1                                      cmp r1, r2
0060026c  08 50 a0 b3                                      movlt r5, #8
00600270  00 50 a0 a3                                      movge r5, #0
00600274  00 00 53 e3                                      cmp r3, #0
00600278  02 50 85 b3                                      orrlt r5, r5, #2
0060027c  de ff ff ba                                      blt #0x6001fc
00600280  03 00 5b e1                                      cmp fp, r3
00600284  01 50 85 b3                                      orrlt r5, r5, #1
00600288  db ff ff ea                                      b #0x6001fc
0060028c  03 00 5b e1                                      cmp fp, r3
00600290  02 a0 a0 e1                                      mov sl, r2
00600294  03 90 a0 e1                                      mov sb, r3
00600298  01 70 87 b3                                      orrlt r7, r7, #1
0060029c  04 20 a0 e1                                      mov r2, r4
006002a0  08 30 a0 e1                                      mov r3, r8
006002a4  d4 ff ff ea                                      b #0x6001fc
006002a8  08 20 16 e2                                      ands r2, r6, #8
006002ac  13 00 00 0a                                      beq #0x600300
006002b0  04 00 9d e5                                      ldr r0, [sp, #4]
006002b4  0a 10 64 e0                                      rsb r1, r4, sl
006002b8  00 30 64 e0                                      rsb r3, r4, r0
006002bc  09 00 68 e0                                      rsb r0, r8, sb
006002c0  90 03 00 e0                                      mul r0, r0, r3
006002c4  f6 37 f4 eb                                      bl #0x30e2a4
006002c8  04 20 9d e5                                      ldr r2, [sp, #4]
006002cc  08 30 80 e0                                      add r3, r0, r8
006002d0  b9 ff ff ea                                      b #0x6001bc
006002d4  08 10 9d e5                                      ldr r1, [sp, #8]
006002d8  0c 50 9d e5                                      ldr r5, [sp, #0xc]
006002dc  20 20 91 e5                                      ldr r2, [r1, #0x20]
006002e0  03 30 d5 e5                                      ldrb r3, [r5, #3]
006002e4  08 00 52 e3                                      cmp r2, #8
006002e8  a3 53 83 e0                                      add r5, r3, r3, lsr #7
006002ec  0f 00 00 0a                                      beq #0x600330
006002f0  0c 00 52 e3                                      cmp r2, #0xc
006002f4  40 00 00 0a                                      beq #0x6003fc
006002f8  1c d0 8d e2                                      add sp, sp, #0x1c
006002fc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00600300  04 30 16 e2                                      ands r3, r6, #4
00600304  03 20 a0 01                                      moveq r2, r3
00600308  ab ff ff 0a                                      beq #0x6001bc
0060030c  09 30 68 e0                                      rsb r3, r8, sb
00600310  00 00 64 e2                                      rsb r0, r4, #0
00600314  90 03 00 e0                                      mul r0, r0, r3
00600318  0a 10 64 e0                                      rsb r1, r4, sl
0060031c  00 20 8d e5                                      str r2, [sp]
00600320  df 37 f4 eb                                      bl #0x30e2a4
00600324  00 20 9d e5                                      ldr r2, [sp]
00600328  08 30 80 e0                                      add r3, r0, r8
0060032c  a2 ff ff ea                                      b #0x6001bc
00600330  01 0c 55 e3                                      cmp r5, #0x100
00600334  a3 00 00 1a                                      bne #0x6005c8
00600338  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0060033c  08 50 9d e5                                      ldr r5, [sp, #8]
00600340  04 a0 5a e0                                      subs sl, sl, r4
00600344  00 00 d1 e5                                      ldrb r0, [r1]
00600348  09 90 68 e0                                      rsb sb, r8, sb
0060034c  01 c0 d1 e5                                      ldrb ip, [r1, #1]
00600350  f8 00 00 e2                                      and r0, r0, #0xf8
00600354  02 20 d1 e5                                      ldrb r2, [r1, #2]
00600358  80 03 a0 e1                                      lsl r0, r0, #7
0060035c  18 10 95 e5                                      ldr r1, [r5, #0x18]
00600360  80 30 03 e2                                      and r3, r3, #0x80
00600364  00 a0 6a 42                                      rsbmi sl, sl, #0
00600368  03 34 80 e1                                      orr r3, r0, r3, lsl #8
0060036c  02 50 a0 53                                      movpl r5, #2
00600370  08 00 9d e5                                      ldr r0, [sp, #8]
00600374  01 50 e0 43                                      mvnmi r5, #1
00600378  00 00 59 e3                                      cmp sb, #0
0060037c  00 90 69 b2                                      rsblt sb, sb, #0
00600380  a2 31 83 e1                                      orr r3, r3, r2, lsr #3
00600384  f8 c0 0c e2                                      and ip, ip, #0xf8
00600388  01 70 a0 e1                                      mov r7, r1
0060038c  00 70 61 b2                                      rsblt r7, r1, #0
00600390  0a 00 59 e1                                      cmp sb, sl
00600394  0c c1 83 e1                                      orr ip, r3, ip, lsl #2
00600398  89 60 a0 c1                                      lslgt r6, sb, #1
0060039c  08 30 90 e5                                      ldr r3, [r0, #8]
006003a0  8a 00 a0 c1                                      lslgt r0, sl, #1
006003a4  07 00 00 ca                                      bgt #0x6003c8
006003a8  00 00 5a e3                                      cmp sl, #0
006003ac  89 00 a0 e1                                      lsl r0, sb, #1
006003b0  8a 60 a0 e1                                      lsl r6, sl, #1
006003b4  cf ff ff 0a                                      beq #0x6002f8
006003b8  07 20 a0 e1                                      mov r2, r7
006003bc  0a 90 a0 e1                                      mov sb, sl
006003c0  05 70 a0 e1                                      mov r7, r5
006003c4  02 50 a0 e1                                      mov r5, r2
006003c8  91 08 02 e0                                      mul r2, r1, r8
006003cc  09 10 a0 e1                                      mov r1, sb
006003d0  84 20 82 e0                                      add r2, r2, r4, lsl #1
006003d4  02 20 83 e0                                      add r2, r3, r2
006003d8  00 30 a0 e3                                      mov r3, #0
006003dc  00 30 83 e0                                      add r3, r3, r0
006003e0  09 00 53 e1                                      cmp r3, sb
006003e4  b7 c0 82 e0                                      strh ip, [r2], r7
006003e8  05 20 82 c0                                      addgt r2, r2, r5
006003ec  03 30 66 c0                                      rsbgt r3, r6, r3
006003f0  01 10 51 e2                                      subs r1, r1, #1
006003f4  f8 ff ff 1a                                      bne #0x6003dc
006003f8  be ff ff ea                                      b #0x6002f8
006003fc  0c 70 9d e5                                      ldr r7, [sp, #0xc]
00600400  15 20 8d e2                                      add r2, sp, #0x15
00600404  01 0c 55 e3                                      cmp r5, #0x100
00600408  02 c0 d7 e5                                      ldrb ip, [r7, #2]
0060040c  00 00 d7 e5                                      ldrb r0, [r7]
00600410  01 10 d7 e5                                      ldrb r1, [r7, #1]
00600414  02 c0 c2 e5                                      strb ip, [r2, #2]
00600418  14 30 cd e5                                      strb r3, [sp, #0x14]
0060041c  15 00 cd e5                                      strb r0, [sp, #0x15]
00600420  01 10 c2 e5                                      strb r1, [r2, #1]
00600424  14 30 9d e5                                      ldr r3, [sp, #0x14]
00600428  40 00 00 0a                                      beq #0x600530
0060042c  08 20 9d e5                                      ldr r2, [sp, #8]
00600430  04 a0 5a e0                                      subs sl, sl, r4
00600434  09 90 68 e0                                      rsb sb, r8, sb
00600438  18 10 92 e5                                      ldr r1, [r2, #0x18]
0060043c  03 c0 e0 43                                      mvnmi ip, #3
00600440  04 70 a0 53                                      movpl r7, #4
00600444  00 a0 6a 42                                      rsbmi sl, sl, #0
00600448  04 c0 8d 45                                      strmi ip, [sp, #4]
0060044c  04 70 8d 55                                      strpl r7, [sp, #4]
00600450  00 00 59 e3                                      cmp sb, #0
00600454  00 90 69 b2                                      rsblt sb, sb, #0
00600458  08 00 9d e5                                      ldr r0, [sp, #8]
0060045c  01 60 a0 e1                                      mov r6, r1
00600460  00 60 61 b2                                      rsblt r6, r1, #0
00600464  0a 00 59 e1                                      cmp sb, sl
00600468  89 c0 a0 c1                                      lslgt ip, sb, #1
0060046c  08 20 90 e5                                      ldr r2, [r0, #8]
00600470  8a b0 a0 c1                                      lslgt fp, sl, #1
00600474  08 c0 8d c5                                      strgt ip, [sp, #8]
00600478  08 00 00 ca                                      bgt #0x6004a0
0060047c  8a 70 a0 e1                                      lsl r7, sl, #1
00600480  00 00 5a e3                                      cmp sl, #0
00600484  89 b0 a0 e1                                      lsl fp, sb, #1
00600488  08 70 8d e5                                      str r7, [sp, #8]
0060048c  99 ff ff 0a                                      beq #0x6002f8
00600490  06 00 a0 e1                                      mov r0, r6
00600494  0a 90 a0 e1                                      mov sb, sl
00600498  04 60 9d e5                                      ldr r6, [sp, #4]
0060049c  04 00 8d e5                                      str r0, [sp, #4]
006004a0  91 08 01 e0                                      mul r1, r1, r8
006004a4  63 34 a0 e1                                      ror r3, r3, #8
006004a8  04 41 81 e0                                      add r4, r1, r4, lsl #2
006004ac  ff a4 c3 e3                                      bic sl, r3, #0xff000000
006004b0  ff 8c 03 e2                                      and r8, r3, #0xff00
006004b4  04 20 82 e0                                      add r2, r2, r4
006004b8  ff ac ca e3                                      bic sl, sl, #0xff00
006004bc  09 10 a0 e1                                      mov r1, sb
006004c0  00 30 a0 e3                                      mov r3, #0
006004c4  00 00 92 e5                                      ldr r0, [r2]
006004c8  0b 30 83 e0                                      add r3, r3, fp
006004cc  09 00 53 e1                                      cmp r3, sb
006004d0  60 04 a0 e1                                      ror r0, r0, #8
006004d4  ff c4 c0 e3                                      bic ip, r0, #0xff000000
006004d8  ff cc cc e3                                      bic ip, ip, #0xff00
006004dc  ff 0c 00 e2                                      and r0, r0, #0xff00
006004e0  0a 70 6c e0                                      rsb r7, ip, sl
006004e4  08 40 60 e0                                      rsb r4, r0, r8
006004e8  95 07 07 e0                                      mul r7, r5, r7
006004ec  95 04 04 e0                                      mul r4, r5, r4
006004f0  27 c4 8c e0                                      add ip, ip, r7, lsr #8
006004f4  24 04 80 e0                                      add r0, r0, r4, lsr #8
006004f8  ff c4 cc e3                                      bic ip, ip, #0xff000000
006004fc  ff cc cc e3                                      bic ip, ip, #0xff00
00600500  ff 0c 00 e2                                      and r0, r0, #0xff00
00600504  00 00 8c e1                                      orr r0, ip, r0
00600508  ff 04 80 e3                                      orr r0, r0, #0xff000000
0060050c  60 0c a0 e1                                      ror r0, r0, #0x18
00600510  06 00 82 e6                                      str r0, [r2], r6
00600514  04 c0 9d c5                                      ldrgt ip, [sp, #4]
00600518  08 00 9d c5                                      ldrgt r0, [sp, #8]
0060051c  0c 20 82 c0                                      addgt r2, r2, ip
00600520  03 30 60 c0                                      rsbgt r3, r0, r3
00600524  01 10 51 e2                                      subs r1, r1, #1
00600528  e5 ff ff 1a                                      bne #0x6004c4
0060052c  71 ff ff ea                                      b #0x6002f8
00600530  08 c0 9d e5                                      ldr ip, [sp, #8]
00600534  04 a0 5a e0                                      subs sl, sl, r4
00600538  09 90 68 e0                                      rsb sb, r8, sb
0060053c  18 20 9c e5                                      ldr r2, [ip, #0x18]
00600540  00 a0 6a 42                                      rsbmi sl, sl, #0
00600544  04 50 a0 53                                      movpl r5, #4
00600548  03 50 e0 43                                      mvnmi r5, #3
0060054c  08 00 9d e5                                      ldr r0, [sp, #8]
00600550  00 00 59 e3                                      cmp sb, #0
00600554  00 90 69 b2                                      rsblt sb, sb, #0
00600558  02 70 a0 e1                                      mov r7, r2
0060055c  00 70 62 b2                                      rsblt r7, r2, #0
00600560  0a 00 59 e1                                      cmp sb, sl
00600564  08 10 90 e5                                      ldr r1, [r0, #8]
00600568  8a c0 a0 c1                                      lslgt ip, sl, #1
0060056c  89 60 a0 c1                                      lslgt r6, sb, #1
00600570  07 00 00 ca                                      bgt #0x600594
00600574  00 00 5a e3                                      cmp sl, #0
00600578  89 c0 a0 e1                                      lsl ip, sb, #1
0060057c  8a 60 a0 e1                                      lsl r6, sl, #1
00600580  5c ff ff 0a                                      beq #0x6002f8
00600584  07 00 a0 e1                                      mov r0, r7
00600588  0a 90 a0 e1                                      mov sb, sl
0060058c  05 70 a0 e1                                      mov r7, r5
00600590  00 50 a0 e1                                      mov r5, r0
00600594  92 08 02 e0                                      mul r2, r2, r8
00600598  09 00 a0 e1                                      mov r0, sb
0060059c  04 41 82 e0                                      add r4, r2, r4, lsl #2
006005a0  04 10 81 e0                                      add r1, r1, r4
006005a4  00 20 a0 e3                                      mov r2, #0
006005a8  0c 20 82 e0                                      add r2, r2, ip
006005ac  09 00 52 e1                                      cmp r2, sb
006005b0  07 30 81 e6                                      str r3, [r1], r7
006005b4  05 10 81 c0                                      addgt r1, r1, r5
006005b8  02 20 66 c0                                      rsbgt r2, r6, r2
006005bc  01 00 50 e2                                      subs r0, r0, #1
006005c0  f8 ff ff 1a                                      bne #0x6005a8
006005c4  4b ff ff ea                                      b #0x6002f8
006005c8  08 10 9d e5                                      ldr r1, [sp, #8]
006005cc  0c 70 9d e5                                      ldr r7, [sp, #0xc]
006005d0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006005d4  04 a0 5a e0                                      subs sl, sl, r4
006005d8  18 30 91 e5                                      ldr r3, [r1, #0x18]
006005dc  01 00 d7 e5                                      ldrb r0, [r7, #1]
006005e0  09 90 68 e0                                      rsb sb, r8, sb
006005e4  02 10 a0 53                                      movpl r1, #2
006005e8  01 70 e0 43                                      mvnmi r7, #1
006005ec  02 c0 d2 e5                                      ldrb ip, [r2, #2]
006005f0  00 a0 6a 42                                      rsbmi sl, sl, #0
006005f4  00 20 d2 e5                                      ldrb r2, [r2]
006005f8  04 70 8d 45                                      strmi r7, [sp, #4]
006005fc  04 10 8d 55                                      strpl r1, [sp, #4]
00600600  08 70 9d e5                                      ldr r7, [sp, #8]
00600604  00 00 59 e3                                      cmp sb, #0
00600608  00 90 69 b2                                      rsblt sb, sb, #0
0060060c  03 60 a0 e1                                      mov r6, r3
00600610  00 60 63 b2                                      rsblt r6, r3, #0
00600614  0a 00 59 e1                                      cmp sb, sl
00600618  08 10 97 e5                                      ldr r1, [r7, #8]
0060061c  89 70 a0 c1                                      lslgt r7, sb, #1
00600620  a5 51 a0 e1                                      lsr r5, r5, #3
00600624  8a b0 a0 c1                                      lslgt fp, sl, #1
00600628  08 70 8d c5                                      strgt r7, [sp, #8]
0060062c  23 00 00 da                                      ble #0x6006c0
00600630  93 08 03 e0                                      mul r3, r3, r8
00600634  f8 20 02 e2                                      and r2, r2, #0xf8
00600638  82 a3 a0 e1                                      lsl sl, r2, #7
0060063c  f8 00 00 e2                                      and r0, r0, #0xf8
00600640  84 40 83 e0                                      add r4, r3, r4, lsl #1
00600644  00 81 a0 e1                                      lsl r8, r0, #2
00600648  04 10 81 e0                                      add r1, r1, r4
0060064c  ac a1 8a e1                                      orr sl, sl, ip, lsr #3
00600650  09 00 a0 e1                                      mov r0, sb
00600654  00 20 a0 e3                                      mov r2, #0
00600658  b0 c0 d1 e1                                      ldrh ip, [r1]
0060065c  0b 20 82 e0                                      add r2, r2, fp
00600660  02 00 59 e1                                      cmp sb, r2
00600664  3e 3e cc e3                                      bic r3, ip, #0x3e0
00600668  83 38 a0 e1                                      lsl r3, r3, #0x11
0060066c  3e ce 0c e2                                      and ip, ip, #0x3e0
00600670  a3 38 a0 e1                                      lsr r3, r3, #0x11
00600674  0a 70 63 e0                                      rsb r7, r3, sl
00600678  95 07 07 e0                                      mul r7, r5, r7
0060067c  08 40 6c e0                                      rsb r4, ip, r8
00600680  a7 32 83 e0                                      add r3, r3, r7, lsr #5
00600684  95 04 04 e0                                      mul r4, r5, r4
00600688  3e 3e c3 e3                                      bic r3, r3, #0x3e0
0060068c  83 38 a0 e1                                      lsl r3, r3, #0x11
00600690  a4 42 8c e0                                      add r4, ip, r4, lsr #5
00600694  3e 4e 04 e2                                      and r4, r4, #0x3e0
00600698  a3 38 a0 e1                                      lsr r3, r3, #0x11
0060069c  03 30 84 e1                                      orr r3, r4, r3
006006a0  b6 30 81 e0                                      strh r3, [r1], r6
006006a4  04 c0 9d b5                                      ldrlt ip, [sp, #4]
006006a8  08 30 9d b5                                      ldrlt r3, [sp, #8]
006006ac  0c 10 81 b0                                      addlt r1, r1, ip
006006b0  02 20 63 b0                                      rsblt r2, r3, r2
006006b4  01 00 50 e2                                      subs r0, r0, #1
006006b8  e6 ff ff 1a                                      bne #0x600658
006006bc  0d ff ff ea                                      b #0x6002f8
006006c0  8a 70 a0 e1                                      lsl r7, sl, #1
006006c4  00 00 5a e3                                      cmp sl, #0
006006c8  89 b0 a0 e1                                      lsl fp, sb, #1
006006cc  08 70 8d e5                                      str r7, [sp, #8]
006006d0  08 ff ff 0a                                      beq #0x6002f8
006006d4  06 70 a0 e1                                      mov r7, r6
006006d8  0a 90 a0 e1                                      mov sb, sl
006006dc  04 60 9d e5                                      ldr r6, [sp, #4]
006006e0  04 70 8d e5                                      str r7, [sp, #4]
006006e4  d1 ff ff ea                                      b #0x600630

; FUNCTION 0x00600708, declared_size=516, range_size=516, mode=arm
; class-group: glitch::video::CImage
; alias: _ZN6glitch5video6CImage6copyToERKN5boost13intrusive_ptrIS1_EERKNS_4core10position2dIiEERKNS7_4rectIiEEPSE_j
; demangled: glitch::video::CImage::copyTo(boost::intrusive_ptr<glitch::video::CImage> const&, glitch::core::position2d<int> const&, glitch::core::rect<int> const&, glitch::core::rect<int> const*, unsigned int)
; decoder-mode: arm
00600708  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0060070c  01 50 a0 e1                                      mov r5, r1
00600710  00 10 91 e5                                      ldr r1, [r1]
00600714  3c d0 4d e2                                      sub sp, sp, #0x3c
00600718  00 70 a0 e1                                      mov r7, r0
0060071c  24 c0 91 e5                                      ldr ip, [r1, #0x24]
00600720  64 00 9d e5                                      ldr r0, [sp, #0x64]
00600724  d8 41 9f e5                                      ldr r4, [pc, #0x1d8]
00600728  02 60 a0 e1                                      mov r6, r2
0060072c  0c 00 50 e1                                      cmp r0, ip
00600730  04 40 8f e0                                      add r4, pc, r4
00600734  60 80 9d e5                                      ldr r8, [sp, #0x60]
00600738  07 00 00 8a                                      bhi #0x60075c
0060073c  00 00 58 e3                                      cmp r8, #0
00600740  65 00 00 0a                                      beq #0x6008dc
00600744  0c 10 98 e5                                      ldr r1, [r8, #0xc]
00600748  00 c0 98 e5                                      ldr ip, [r8]
0060074c  05 00 98 e9                                      ldmib r8, {r0, r2}
00600750  00 80 96 e5                                      ldr r8, [r6]
00600754  02 00 58 e1                                      cmp r8, r2
00600758  01 00 00 da                                      ble #0x600764
0060075c  3c d0 8d e2                                      add sp, sp, #0x3c
00600760  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00600764  04 60 96 e5                                      ldr r6, [r6, #4]
00600768  01 00 56 e1                                      cmp r6, r1
0060076c  fa ff ff ca                                      bgt #0x60075c
00600770  00 a0 93 e5                                      ldr sl, [r3]
00600774  0c b0 93 e5                                      ldr fp, [r3, #0xc]
00600778  0c 00 58 e1                                      cmp r8, ip
0060077c  24 a0 8d e5                                      str sl, [sp, #0x24]
00600780  04 a0 93 e5                                      ldr sl, [r3, #4]
00600784  20 a0 8d e5                                      str sl, [sp, #0x20]
00600788  08 30 93 e5                                      ldr r3, [r3, #8]
0060078c  4c 00 00 aa                                      bge #0x6008c4
00600790  0c a0 68 e0                                      rsb sl, r8, ip
00600794  24 c0 9d e5                                      ldr ip, [sp, #0x24]
00600798  08 80 6a e0                                      rsb r8, sl, r8
0060079c  0c a0 8a e0                                      add sl, sl, ip
006007a0  00 00 56 e1                                      cmp r6, r0
006007a4  00 90 66 b0                                      rsblt sb, r6, r0
006007a8  20 00 9d b5                                      ldrlt r0, [sp, #0x20]
006007ac  06 60 69 b0                                      rsblt r6, sb, r6
006007b0  20 90 9d a5                                      ldrge sb, [sp, #0x20]
006007b4  00 90 89 b0                                      addlt sb, sb, r0
006007b8  03 00 88 e0                                      add r0, r8, r3
006007bc  00 00 6a e0                                      rsb r0, sl, r0
006007c0  02 00 50 e1                                      cmp r0, r2
006007c4  00 20 62 c0                                      rsbgt r2, r2, r0
006007c8  03 30 62 c0                                      rsbgt r3, r2, r3
006007cc  0b 20 86 e0                                      add r2, r6, fp
006007d0  02 20 69 e0                                      rsb r2, sb, r2
006007d4  01 00 52 e1                                      cmp r2, r1
006007d8  02 10 61 c0                                      rsbgt r1, r1, r2
006007dc  0b b0 61 c0                                      rsbgt fp, r1, fp
006007e0  03 a0 6a e0                                      rsb sl, sl, r3
006007e4  0b 90 69 e0                                      rsb sb, sb, fp
006007e8  00 00 5a e3                                      cmp sl, #0
006007ec  00 00 59 c3                                      cmpgt sb, #0
006007f0  d9 ff ff da                                      ble #0x60075c
006007f4  0c b1 9f e5                                      ldr fp, [pc, #0x10c]
006007f8  20 00 97 e5                                      ldr r0, [r7, #0x20]
006007fc  28 10 a0 e3                                      mov r1, #0x28
00600800  0b 30 94 e7                                      ldr r3, [r4, fp]
00600804  08 c0 97 e5                                      ldr ip, [r7, #8]
00600808  18 20 97 e5                                      ldr r2, [r7, #0x18]
0060080c  91 30 23 e0                                      mla r3, r1, r0, r3
00600810  20 10 9d e5                                      ldr r1, [sp, #0x20]
00600814  15 30 d3 e5                                      ldrb r3, [r3, #0x15]
00600818  92 c1 2c e0                                      mla ip, r2, r1, ip
0060081c  64 10 9d e5                                      ldr r1, [sp, #0x64]
00600820  00 00 51 e3                                      cmp r1, #0
00600824  24 10 9d e5                                      ldr r1, [sp, #0x24]
00600828  91 c3 23 e0                                      mla r3, r1, r3, ip
0060082c  20 30 8d e5                                      str r3, [sp, #0x20]
00600830  25 00 00 0a                                      beq #0x6008cc
00600834  00 30 95 e5                                      ldr r3, [r5]
00600838  64 20 9d e5                                      ldr r2, [sp, #0x64]
0060083c  28 00 8d e2                                      add r0, sp, #0x28
00600840  0c e0 93 e5                                      ldr lr, [r3, #0xc]
00600844  03 10 a0 e1                                      mov r1, r3
00600848  20 30 93 e5                                      ldr r3, [r3, #0x20]
0060084c  01 c0 42 e2                                      sub ip, r2, #1
00600850  1c 30 8d e5                                      str r3, [sp, #0x1c]
00600854  0c 31 9e e7                                      ldr r3, [lr, ip, lsl #2]
00600858  18 30 8d e5                                      str r3, [sp, #0x18]
0060085c  75 fb ff eb                                      bl #0x5ff638
00600860  28 10 9d e5                                      ldr r1, [sp, #0x28]
00600864  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00600868  9f b4 ff eb                                      bl #0x5edaec
0060086c  18 20 97 e5                                      ldr r2, [r7, #0x18]
00600870  00 c0 a0 e1                                      mov ip, r0
00600874  00 10 95 e5                                      ldr r1, [r5]
00600878  20 00 97 e5                                      ldr r0, [r7, #0x20]
0060087c  18 30 9d e5                                      ldr r3, [sp, #0x18]
00600880  20 e0 91 e5                                      ldr lr, [r1, #0x20]
00600884  0b 40 94 e7                                      ldr r4, [r4, fp]
00600888  96 3c 26 e0                                      mla r6, r6, ip, r3
0060088c  28 30 a0 e3                                      mov r3, #0x28
00600890  93 4e 23 e0                                      mla r3, r3, lr, r4
00600894  04 c0 8d e5                                      str ip, [sp, #4]
00600898  15 30 d3 e5                                      ldrb r3, [r3, #0x15]
0060089c  00 c0 a0 e3                                      mov ip, #0
006008a0  20 10 9d e5                                      ldr r1, [sp, #0x20]
006008a4  93 68 26 e0                                      mla r6, r3, r8, r6
006008a8  0e 30 a0 e1                                      mov r3, lr
006008ac  00 60 8d e5                                      str r6, [sp]
006008b0  08 a0 8d e5                                      str sl, [sp, #8]
006008b4  0c 90 8d e5                                      str sb, [sp, #0xc]
006008b8  10 c0 8d e5                                      str ip, [sp, #0x10]
006008bc  3a e3 ff eb                                      bl #0x5f95ac
006008c0  a5 ff ff ea                                      b #0x60075c
006008c4  24 a0 9d e5                                      ldr sl, [sp, #0x24]
006008c8  b4 ff ff ea                                      b #0x6007a0
006008cc  00 10 95 e5                                      ldr r1, [r5]
006008d0  08 30 91 e5                                      ldr r3, [r1, #8]
006008d4  18 c0 91 e5                                      ldr ip, [r1, #0x18]
006008d8  e8 ff ff ea                                      b #0x600880
006008dc  30 00 8d e2                                      add r0, sp, #0x30
006008e0  64 20 9d e5                                      ldr r2, [sp, #0x64]
006008e4  18 30 8d e5                                      str r3, [sp, #0x18]
006008e8  52 fb ff eb                                      bl #0x5ff638
006008ec  30 20 9d e5                                      ldr r2, [sp, #0x30]
006008f0  34 10 9d e5                                      ldr r1, [sp, #0x34]
006008f4  08 c0 a0 e1                                      mov ip, r8
006008f8  08 00 a0 e1                                      mov r0, r8
006008fc  18 30 9d e5                                      ldr r3, [sp, #0x18]
00600900  92 ff ff ea                                      b #0x600750
; mapping-symbol data/literal pool
00600904  60 43 39 00 34 1f 00 00                          .byte 0x60, 0x43, 0x39, 0x00, 0x34, 0x1f, 0x00, 0x00

; FUNCTION 0x0060090c, declared_size=60, range_size=60, mode=arm
; class-group: glitch::video::CImage
; alias: _ZN6glitch5video6CImage6copyToERKN5boost13intrusive_ptrIS1_EERKNS_4core10position2dIiEEj
; demangled: glitch::video::CImage::copyTo(boost::intrusive_ptr<glitch::video::CImage> const&, glitch::core::position2d<int> const&, unsigned int)
; decoder-mode: arm
0060090c  10 40 2d e9                                      push {r4, lr}
00600910  14 e0 90 e5                                      ldr lr, [r0, #0x14]
00600914  10 40 90 e5                                      ldr r4, [r0, #0x10]
00600918  18 d0 4d e2                                      sub sp, sp, #0x18
0060091c  00 c0 a0 e3                                      mov ip, #0
00600920  04 30 8d e5                                      str r3, [sp, #4]
00600924  08 30 8d e2                                      add r3, sp, #8
00600928  10 40 8d e5                                      str r4, [sp, #0x10]
0060092c  14 e0 8d e5                                      str lr, [sp, #0x14]
00600930  00 c0 8d e5                                      str ip, [sp]
00600934  08 c0 8d e5                                      str ip, [sp, #8]
00600938  0c c0 8d e5                                      str ip, [sp, #0xc]
0060093c  71 ff ff eb                                      bl #0x600708
00600940  18 d0 8d e2                                      add sp, sp, #0x18
00600944  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00600e1c, declared_size=180, range_size=180, mode=arm
; class-group: glitch::video::CImage
; alias: _ZN6glitch5video6CImage13drawRectangleERKNS_4core4rectIiEERKNS0_6SColorE
; demangled: glitch::video::CImage::drawRectangle(glitch::core::rect<int> const&, glitch::video::SColor const&)
; decoder-mode: arm
00600e1c  10 40 2d e9                                      push {r4, lr}
00600e20  00 30 a0 e1                                      mov r3, r0
00600e24  20 00 90 e5                                      ldr r0, [r0, #0x20]
00600e28  18 d0 4d e2                                      sub sp, sp, #0x18
00600e2c  01 c0 a0 e1                                      mov ip, r1
00600e30  0c 00 50 e3                                      cmp r0, #0xc
00600e34  1a 00 00 0a                                      beq #0x600ea4
00600e38  0d 00 50 e3                                      cmp r0, #0xd
00600e3c  02 40 d2 05                                      ldrbeq r4, [r2, #2]
00600e40  02 10 d2 15                                      ldrbne r1, [r2, #2]
00600e44  03 00 d2 e5                                      ldrb r0, [r2, #3]
00600e48  01 e0 d2 05                                      ldrbeq lr, [r2, #1]
00600e4c  00 10 d2 05                                      ldrbeq r1, [r2]
00600e50  00 40 d2 15                                      ldrbne r4, [r2]
00600e54  01 e0 d2 15                                      ldrbne lr, [r2, #1]
00600e58  15 20 8d e2                                      add r2, sp, #0x15
00600e5c  14 40 cd e5                                      strb r4, [sp, #0x14]
00600e60  15 e0 cd e5                                      strb lr, [sp, #0x15]
00600e64  01 10 c2 e5                                      strb r1, [r2, #1]
00600e68  02 00 c2 e5                                      strb r0, [r2, #2]
00600e6c  14 40 9d e5                                      ldr r4, [sp, #0x14]
00600e70  00 e0 a0 e3                                      mov lr, #0
00600e74  ff 00 50 e3                                      cmp r0, #0xff
00600e78  03 10 a0 e1                                      mov r1, r3
00600e7c  01 00 a0 03                                      moveq r0, #1
00600e80  02 00 a0 13                                      movne r0, #2
00600e84  0e 20 a0 e1                                      mov r2, lr
00600e88  0c 30 a0 e1                                      mov r3, ip
00600e8c  08 40 8d e5                                      str r4, [sp, #8]
00600e90  00 e0 8d e5                                      str lr, [sp]
00600e94  04 c0 8d e5                                      str ip, [sp, #4]
00600e98  aa fe ff eb                                      bl #0x600948
00600e9c  18 d0 8d e2                                      add sp, sp, #0x18
00600ea0  10 80 bd e8                                      pop {r4, pc}
00600ea4  02 40 d2 e5                                      ldrb r4, [r2, #2]
00600ea8  01 10 d2 e5                                      ldrb r1, [r2, #1]
00600eac  03 00 d2 e5                                      ldrb r0, [r2, #3]
00600eb0  00 e0 d2 e5                                      ldrb lr, [r2]
00600eb4  15 20 8d e2                                      add r2, sp, #0x15
00600eb8  02 40 c2 e5                                      strb r4, [r2, #2]
00600ebc  15 e0 cd e5                                      strb lr, [sp, #0x15]
00600ec0  01 10 c2 e5                                      strb r1, [r2, #1]
00600ec4  14 00 cd e5                                      strb r0, [sp, #0x14]
00600ec8  14 40 9d e5                                      ldr r4, [sp, #0x14]
00600ecc  e7 ff ff ea                                      b #0x600e70

; FUNCTION 0x00600ed0, declared_size=252, range_size=252, mode=arm
; class-group: glitch::video::CImage
; alias: _ZN6glitch5video6CImage15copyToWithAlphaERKN5boost13intrusive_ptrIS1_EERKNS_4core10position2dIiEERKNS7_4rectIiEERKNS0_6SColorEPSE_
; demangled: glitch::video::CImage::copyToWithAlpha(boost::intrusive_ptr<glitch::video::CImage> const&, glitch::core::position2d<int> const&, glitch::core::rect<int> const&, glitch::video::SColor const&, glitch::core::rect<int> const*)
; decoder-mode: arm
00600ed0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00600ed4  00 10 91 e5                                      ldr r1, [r1]
00600ed8  02 40 a0 e1                                      mov r4, r2
00600edc  1c d0 4d e2                                      sub sp, sp, #0x1c
00600ee0  20 20 91 e5                                      ldr r2, [r1, #0x20]
00600ee4  03 c0 a0 e1                                      mov ip, r3
00600ee8  00 e0 a0 e1                                      mov lr, r0
00600eec  0c 00 52 e3                                      cmp r2, #0xc
00600ef0  30 30 9d e5                                      ldr r3, [sp, #0x30]
00600ef4  1e 00 00 0a                                      beq #0x600f74
00600ef8  0d 00 52 e3                                      cmp r2, #0xd
00600efc  27 00 00 0a                                      beq #0x600fa0
00600f00  02 70 d3 e5                                      ldrb r7, [r3, #2]
00600f04  03 20 d3 e5                                      ldrb r2, [r3, #3]
00600f08  01 60 d3 e5                                      ldrb r6, [r3, #1]
00600f0c  00 00 d3 e5                                      ldrb r0, [r3]
00600f10  15 30 8d e2                                      add r3, sp, #0x15
00600f14  02 20 c3 e5                                      strb r2, [r3, #2]
00600f18  14 00 cd e5                                      strb r0, [sp, #0x14]
00600f1c  15 60 cd e5                                      strb r6, [sp, #0x15]
00600f20  01 70 c3 e5                                      strb r7, [r3, #1]
00600f24  14 50 9d e5                                      ldr r5, [sp, #0x14]
00600f28  ff 00 52 e3                                      cmp r2, #0xff
00600f2c  08 00 00 0a                                      beq #0x600f54
00600f30  04 00 a0 e3                                      mov r0, #4
00600f34  34 20 9d e5                                      ldr r2, [sp, #0x34]
00600f38  04 30 a0 e1                                      mov r3, r4
00600f3c  00 e0 8d e5                                      str lr, [sp]
00600f40  04 c0 8d e5                                      str ip, [sp, #4]
00600f44  08 50 8d e5                                      str r5, [sp, #8]
00600f48  7e fe ff eb                                      bl #0x600948
00600f4c  1c d0 8d e2                                      add sp, sp, #0x1c
00600f50  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00600f54  ff 00 50 e3                                      cmp r0, #0xff
00600f58  f4 ff ff 1a                                      bne #0x600f30
00600f5c  ff 00 56 e3                                      cmp r6, #0xff
00600f60  f2 ff ff 1a                                      bne #0x600f30
00600f64  ff 00 57 e3                                      cmp r7, #0xff
00600f68  03 00 a0 03                                      moveq r0, #3
00600f6c  ef ff ff 1a                                      bne #0x600f30
00600f70  ef ff ff ea                                      b #0x600f34
00600f74  02 70 d3 e5                                      ldrb r7, [r3, #2]
00600f78  01 60 d3 e5                                      ldrb r6, [r3, #1]
00600f7c  03 20 d3 e5                                      ldrb r2, [r3, #3]
00600f80  00 00 d3 e5                                      ldrb r0, [r3]
00600f84  15 30 8d e2                                      add r3, sp, #0x15
00600f88  02 70 c3 e5                                      strb r7, [r3, #2]
00600f8c  14 20 cd e5                                      strb r2, [sp, #0x14]
00600f90  15 00 cd e5                                      strb r0, [sp, #0x15]
00600f94  01 60 c3 e5                                      strb r6, [r3, #1]
00600f98  14 50 9d e5                                      ldr r5, [sp, #0x14]
00600f9c  e1 ff ff ea                                      b #0x600f28
00600fa0  03 20 d3 e5                                      ldrb r2, [r3, #3]
00600fa4  02 70 d3 e5                                      ldrb r7, [r3, #2]
00600fa8  01 60 d3 e5                                      ldrb r6, [r3, #1]
00600fac  00 00 d3 e5                                      ldrb r0, [r3]
00600fb0  15 30 8d e2                                      add r3, sp, #0x15
00600fb4  02 20 c3 e5                                      strb r2, [r3, #2]
00600fb8  14 70 cd e5                                      strb r7, [sp, #0x14]
00600fbc  15 60 cd e5                                      strb r6, [sp, #0x15]
00600fc0  01 00 c3 e5                                      strb r0, [r3, #1]
00600fc4  14 50 9d e5                                      ldr r5, [sp, #0x14]
00600fc8  d6 ff ff ea                                      b #0x600f28

; FUNCTION 0x00600fcc, declared_size=1968, range_size=1968, mode=arm
; class-group: glitch::video::CImage
; alias: _ZN6glitch5video6CImage13copyToScalingEPvjjNS0_14E_PIXEL_FORMATEji
; demangled: glitch::video::CImage::copyToScaling(void*, unsigned int, unsigned int, glitch::video::E_PIXEL_FORMAT, unsigned int, int)
; decoder-mode: arm
00600fcc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00600fd0  9c 57 9f e5                                      ldr r5, [pc, #0x79c]
00600fd4  ac d0 4d e2                                      sub sp, sp, #0xac
00600fd8  00 00 51 e3                                      cmp r1, #0
00600fdc  00 00 52 13                                      cmpne r2, #0
00600fe0  05 50 8f e0                                      add r5, pc, r5
00600fe4  54 20 8d e5                                      str r2, [sp, #0x54]
00600fe8  6c 10 8d e5                                      str r1, [sp, #0x6c]
00600fec  00 40 a0 e1                                      mov r4, r0
00600ff0  64 30 8d e5                                      str r3, [sp, #0x64]
00600ff4  d8 80 9d e5                                      ldr r8, [sp, #0xd8]
00600ff8  2c 01 00 0a                                      beq #0x6014b0
00600ffc  00 00 53 e3                                      cmp r3, #0
00601000  2a 01 00 0a                                      beq #0x6014b0
00601004  d4 10 9d e5                                      ldr r1, [sp, #0xd4]
00601008  00 00 51 e3                                      cmp r1, #0
0060100c  29 01 00 0a                                      beq #0x6014b8
00601010  10 10 94 e5                                      ldr r1, [r4, #0x10]
00601014  54 20 9d e5                                      ldr r2, [sp, #0x54]
00601018  02 00 51 e1                                      cmp r1, r2
0060101c  bf 01 00 0a                                      beq #0x601720
00601020  20 60 94 e5                                      ldr r6, [r4, #0x20]
00601024  4c 77 9f e5                                      ldr r7, [pc, #0x74c]
00601028  28 20 a0 e3                                      mov r2, #0x28
0060102c  92 06 02 e0                                      mul r2, r2, r6
00601030  07 00 95 e7                                      ldr r0, [r5, r7]
00601034  18 30 94 e5                                      ldr r3, [r4, #0x18]
00601038  08 c0 94 e5                                      ldr ip, [r4, #8]
0060103c  3c 30 8d e5                                      str r3, [sp, #0x3c]
00601040  02 30 90 e7                                      ldr r3, [r0, r2]
00601044  02 20 80 e0                                      add r2, r0, r2
00601048  40 30 13 e2                                      ands r3, r3, #0x40
0060104c  04 00 00 1a                                      bne #0x601064
00601050  16 20 d2 e5                                      ldrb r2, [r2, #0x16]
00601054  20 00 52 e3                                      cmp r2, #0x20
00601058  7c c0 8d 05                                      streq ip, [sp, #0x7c]
0060105c  80 30 8d 05                                      streq r3, [sp, #0x80]
00601060  1a 00 00 0a                                      beq #0x6010d0
00601064  0e 00 a0 e3                                      mov r0, #0xe
00601068  9f b2 ff eb                                      bl #0x5edaec
0060106c  3c 00 8d e5                                      str r0, [sp, #0x3c]
00601070  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
00601074  14 00 94 e5                                      ldr r0, [r4, #0x14]
00601078  00 10 a0 e3                                      mov r1, #0
0060107c  0e 60 a0 e3                                      mov r6, #0xe
00601080  90 0c 00 e0                                      mul r0, r0, ip
00601084  47 cc fc eb                                      bl #0x5341a8
00601088  7c 00 8d e5                                      str r0, [sp, #0x7c]
0060108c  14 c0 94 e5                                      ldr ip, [r4, #0x14]
00601090  08 10 94 e5                                      ldr r1, [r4, #8]
00601094  10 e0 94 e5                                      ldr lr, [r4, #0x10]
00601098  20 00 94 e5                                      ldr r0, [r4, #0x20]
0060109c  18 20 94 e5                                      ldr r2, [r4, #0x18]
006010a0  0c c0 8d e5                                      str ip, [sp, #0xc]
006010a4  00 c0 a0 e3                                      mov ip, #0
006010a8  10 c0 8d e5                                      str ip, [sp, #0x10]
006010ac  7c c0 9d e5                                      ldr ip, [sp, #0x7c]
006010b0  06 30 a0 e1                                      mov r3, r6
006010b4  08 e0 8d e5                                      str lr, [sp, #8]
006010b8  00 c0 8d e5                                      str ip, [sp]
006010bc  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
006010c0  04 c0 8d e5                                      str ip, [sp, #4]
006010c4  38 e1 ff eb                                      bl #0x5f95ac
006010c8  7c 10 9d e5                                      ldr r1, [sp, #0x7c]
006010cc  80 10 8d e5                                      str r1, [sp, #0x80]
006010d0  d0 30 9d e5                                      ldr r3, [sp, #0xd0]
006010d4  28 20 a0 e3                                      mov r2, #0x28
006010d8  07 10 95 e7                                      ldr r1, [r5, r7]
006010dc  92 03 02 e0                                      mul r2, r2, r3
006010e0  02 30 91 e7                                      ldr r3, [r1, r2]
006010e4  02 20 81 e0                                      add r2, r1, r2
006010e8  40 30 13 e2                                      ands r3, r3, #0x40
006010ec  02 00 00 1a                                      bne #0x6010fc
006010f0  16 20 d2 e5                                      ldrb r2, [r2, #0x16]
006010f4  20 00 52 e3                                      cmp r2, #0x20
006010f8  80 01 00 0a                                      beq #0x601700
006010fc  54 10 9d e5                                      ldr r1, [sp, #0x54]
00601100  0e 00 a0 e3                                      mov r0, #0xe
00601104  78 b2 ff eb                                      bl #0x5edaec
00601108  64 30 9d e5                                      ldr r3, [sp, #0x64]
0060110c  74 00 8d e5                                      str r0, [sp, #0x74]
00601110  00 10 a0 e3                                      mov r1, #0
00601114  93 00 00 e0                                      mul r0, r3, r0
00601118  22 cc fc eb                                      bl #0x5341a8
0060111c  0e c0 a0 e3                                      mov ip, #0xe
00601120  70 00 8d e5                                      str r0, [sp, #0x70]
00601124  78 00 8d e5                                      str r0, [sp, #0x78]
00601128  88 c0 8d e5                                      str ip, [sp, #0x88]
0060112c  a4 20 8d e2                                      add r2, sp, #0xa4
00601130  88 10 9d e5                                      ldr r1, [sp, #0x88]
00601134  06 00 a0 e1                                      mov r0, r6
00601138  24 b2 ff eb                                      bl #0x5ed9d0
0060113c  10 00 94 e5                                      ldr r0, [r4, #0x10]
00601140  07 36 f4 eb                                      bl #0x30e964
00601144  00 50 a0 e1                                      mov r5, r0
00601148  54 00 9d e5                                      ldr r0, [sp, #0x54]
0060114c  63 34 f4 eb                                      bl #0x30e2e0
00601150  00 10 a0 e1                                      mov r1, r0
00601154  05 00 a0 e1                                      mov r0, r5
00601158  cd 36 f4 eb                                      bl #0x30ec94
0060115c  60 00 8d e5                                      str r0, [sp, #0x60]
00601160  14 00 94 e5                                      ldr r0, [r4, #0x14]
00601164  00 10 a0 e3                                      mov r1, #0
00601168  40 10 8d e5                                      str r1, [sp, #0x40]
0060116c  fc 35 f4 eb                                      bl #0x30e964
00601170  00 40 a0 e1                                      mov r4, r0
00601174  64 00 9d e5                                      ldr r0, [sp, #0x64]
00601178  58 34 f4 eb                                      bl #0x30e2e0
0060117c  00 10 a0 e1                                      mov r1, r0
00601180  04 00 a0 e1                                      mov r0, r4
00601184  c2 36 f4 eb                                      bl #0x30ec94
00601188  78 20 9d e5                                      ldr r2, [sp, #0x78]
0060118c  8c 00 8d e5                                      str r0, [sp, #0x8c]
00601190  00 30 a0 e3                                      mov r3, #0
00601194  08 00 a0 e1                                      mov r0, r8
00601198  84 20 8d e5                                      str r2, [sp, #0x84]
0060119c  68 30 8d e5                                      str r3, [sp, #0x68]
006011a0  ef 35 f4 eb                                      bl #0x30e964
006011a4  4c 00 8d e5                                      str r0, [sp, #0x4c]
006011a8  68 c0 9d e5                                      ldr ip, [sp, #0x68]
006011ac  01 c0 8c e2                                      add ip, ip, #1
006011b0  0c 00 a0 e1                                      mov r0, ip
006011b4  68 c0 8d e5                                      str ip, [sp, #0x68]
006011b8  48 34 f4 eb                                      bl #0x30e2e0
006011bc  8c 10 9d e5                                      ldr r1, [sp, #0x8c]
006011c0  e9 36 f4 eb                                      bl #0x30ed6c
006011c4  17 17 0b e3                                      movw r1, #0xb717
006011c8  d1 18 43 e3                                      movt r1, #0x38d1
006011cc  2c 00 8d e5                                      str r0, [sp, #0x2c]
006011d0  40 00 9d e5                                      ldr r0, [sp, #0x40]
006011d4  72 36 f4 eb                                      bl #0x30eba4
006011d8  b6 36 f4 eb                                      bl #0x30ecb8
006011dc  50 00 8d e5                                      str r0, [sp, #0x50]
006011e0  b9 34 f4 eb                                      bl #0x30e4cc
006011e4  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
006011e8  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
006011ec  91 20 20 e0                                      mla r0, r1, r0, r2
006011f0  50 10 9d e5                                      ldr r1, [sp, #0x50]
006011f4  5c 00 8d e5                                      str r0, [sp, #0x5c]
006011f8  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006011fc  3d 34 f4 eb                                      bl #0x30e2f8
00601200  84 10 9d e5                                      ldr r1, [sp, #0x84]
00601204  00 00 50 e3                                      cmp r0, #0
00601208  00 30 a0 e3                                      mov r3, #0
0060120c  01 30 a0 13                                      movne r3, #1
00601210  00 c0 a0 e3                                      mov ip, #0
00601214  73 30 ef e6                                      uxtb r3, r3
00601218  00 20 a0 e3                                      mov r2, #0
0060121c  1c c0 8d e5                                      str ip, [sp, #0x1c]
00601220  58 30 8d e5                                      str r3, [sp, #0x58]
00601224  44 10 8d e5                                      str r1, [sp, #0x44]
00601228  48 20 8d e5                                      str r2, [sp, #0x48]
0060122c  48 30 9d e5                                      ldr r3, [sp, #0x48]
00601230  00 c0 a0 e3                                      mov ip, #0
00601234  94 c0 8d e5                                      str ip, [sp, #0x94]
00601238  01 30 83 e2                                      add r3, r3, #1
0060123c  03 00 a0 e1                                      mov r0, r3
00601240  48 30 8d e5                                      str r3, [sp, #0x48]
00601244  98 c0 8d e5                                      str ip, [sp, #0x98]
00601248  9c c0 8d e5                                      str ip, [sp, #0x9c]
0060124c  a0 c0 8d e5                                      str ip, [sp, #0xa0]
00601250  22 34 f4 eb                                      bl #0x30e2e0
00601254  60 10 9d e5                                      ldr r1, [sp, #0x60]
00601258  c3 36 f4 eb                                      bl #0x30ed6c
0060125c  17 17 0b e3                                      movw r1, #0xb717
00601260  d1 18 43 e3                                      movt r1, #0x38d1
00601264  18 00 8d e5                                      str r0, [sp, #0x18]
00601268  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0060126c  4c 36 f4 eb                                      bl #0x30eba4
00601270  90 36 f4 eb                                      bl #0x30ecb8
00601274  58 10 9d e5                                      ldr r1, [sp, #0x58]
00601278  38 00 8d e5                                      str r0, [sp, #0x38]
0060127c  00 00 51 e3                                      cmp r1, #0
00601280  00 70 a0 03                                      moveq r7, #0
00601284  dd 00 00 0a                                      beq #0x601600
00601288  8f 34 f4 eb                                      bl #0x30e4cc
0060128c  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
00601290  40 10 9d e5                                      ldr r1, [sp, #0x40]
00601294  00 40 a0 e3                                      mov r4, #0
00601298  00 01 82 e0                                      add r0, r2, r0, lsl #2
0060129c  28 00 8d e5                                      str r0, [sp, #0x28]
006012a0  50 00 9d e5                                      ldr r0, [sp, #0x50]
006012a4  18 35 f4 eb                                      bl #0x30e70c
006012a8  38 10 9d e5                                      ldr r1, [sp, #0x38]
006012ac  00 00 50 e3                                      cmp r0, #0
006012b0  18 00 9d e5                                      ldr r0, [sp, #0x18]
006012b4  01 40 a0 13                                      movne r4, #1
006012b8  0e 34 f4 eb                                      bl #0x30e2f8
006012bc  00 00 50 e3                                      cmp r0, #0
006012c0  74 40 ef e6                                      uxtb r4, r4
006012c4  00 30 a0 e3                                      mov r3, #0
006012c8  01 30 a0 13                                      movne r3, #1
006012cc  34 40 8d e5                                      str r4, [sp, #0x34]
006012d0  73 30 ef e6                                      uxtb r3, r3
006012d4  30 30 8d e5                                      str r3, [sp, #0x30]
006012d8  34 30 9d e5                                      ldr r3, [sp, #0x34]
006012dc  00 80 a0 e3                                      mov r8, #0
006012e0  94 b0 9d e5                                      ldr fp, [sp, #0x94]
006012e4  00 00 53 e3                                      cmp r3, #0
006012e8  98 90 9d e5                                      ldr sb, [sp, #0x98]
006012ec  9c a0 9d e5                                      ldr sl, [sp, #0x9c]
006012f0  50 40 9d e5                                      ldr r4, [sp, #0x50]
006012f4  08 70 a0 e1                                      mov r7, r8
006012f8  ad 00 00 0a                                      beq #0x6015b4
006012fc  fe 15 a0 e3                                      mov r1, #0x3f800000
00601300  04 00 a0 e1                                      mov r0, r4
00601304  26 36 f4 eb                                      bl #0x30eba4
00601308  40 10 9d e5                                      ldr r1, [sp, #0x40]
0060130c  24 00 8d e5                                      str r0, [sp, #0x24]
00601310  25 34 f4 eb                                      bl #0x30e3ac
00601314  20 00 8d e5                                      str r0, [sp, #0x20]
00601318  30 10 9d e5                                      ldr r1, [sp, #0x30]
0060131c  00 00 51 e3                                      cmp r1, #0
00601320  96 00 00 0a                                      beq #0x601580
00601324  38 50 9d e5                                      ldr r5, [sp, #0x38]
00601328  28 40 9d e5                                      ldr r4, [sp, #0x28]
0060132c  31 00 00 ea                                      b #0x6013f8
00601330  fe 15 a0 e3                                      mov r1, #0x3f800000
00601334  05 00 a0 e1                                      mov r0, r5
00601338  19 36 f4 eb                                      bl #0x30eba4
0060133c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00601340  00 60 a0 e1                                      mov r6, r0
00601344  18 34 f4 eb                                      bl #0x30e3ac
00601348  00 10 a0 e1                                      mov r1, r0
0060134c  20 00 9d e5                                      ldr r0, [sp, #0x20]
00601350  85 36 f4 eb                                      bl #0x30ed6c
00601354  00 50 a0 e1                                      mov r5, r0
00601358  05 00 a0 e1                                      mov r0, r5
0060135c  fe 15 a0 e3                                      mov r1, #0x3f800000
00601360  09 33 f4 eb                                      bl #0x30df8c
00601364  00 00 50 e3                                      cmp r0, #0
00601368  57 00 00 0a                                      beq #0x6014cc
0060136c  00 00 d4 e5                                      ldrb r0, [r4]
00601370  da 33 f4 eb                                      bl #0x30e2e0
00601374  00 10 a0 e1                                      mov r1, r0
00601378  0b 00 a0 e1                                      mov r0, fp
0060137c  08 36 f4 eb                                      bl #0x30eba4
00601380  00 b0 a0 e1                                      mov fp, r0
00601384  01 00 d4 e5                                      ldrb r0, [r4, #1]
00601388  d4 33 f4 eb                                      bl #0x30e2e0
0060138c  00 10 a0 e1                                      mov r1, r0
00601390  09 00 a0 e1                                      mov r0, sb
00601394  02 36 f4 eb                                      bl #0x30eba4
00601398  00 90 a0 e1                                      mov sb, r0
0060139c  02 00 d4 e5                                      ldrb r0, [r4, #2]
006013a0  ce 33 f4 eb                                      bl #0x30e2e0
006013a4  00 10 a0 e1                                      mov r1, r0
006013a8  0a 00 a0 e1                                      mov r0, sl
006013ac  fc 35 f4 eb                                      bl #0x30eba4
006013b0  00 a0 a0 e1                                      mov sl, r0
006013b4  03 00 d4 e5                                      ldrb r0, [r4, #3]
006013b8  c8 33 f4 eb                                      bl #0x30e2e0
006013bc  00 10 a0 e1                                      mov r1, r0
006013c0  08 00 a0 e1                                      mov r0, r8
006013c4  f6 35 f4 eb                                      bl #0x30eba4
006013c8  fe 15 a0 e3                                      mov r1, #0x3f800000
006013cc  00 80 a0 e1                                      mov r8, r0
006013d0  07 00 a0 e1                                      mov r0, r7
006013d4  f2 35 f4 eb                                      bl #0x30eba4
006013d8  06 10 a0 e1                                      mov r1, r6
006013dc  00 70 a0 e1                                      mov r7, r0
006013e0  18 00 9d e5                                      ldr r0, [sp, #0x18]
006013e4  c3 33 f4 eb                                      bl #0x30e2f8
006013e8  00 00 50 e3                                      cmp r0, #0
006013ec  63 00 00 0a                                      beq #0x601580
006013f0  04 40 84 e2                                      add r4, r4, #4
006013f4  06 50 a0 e1                                      mov r5, r6
006013f8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006013fc  05 10 a0 e1                                      mov r1, r5
00601400  bc 33 f4 eb                                      bl #0x30e2f8
00601404  00 00 50 e3                                      cmp r0, #0
00601408  c8 ff ff 1a                                      bne #0x601330
0060140c  05 00 a0 e1                                      mov r0, r5
00601410  fe 15 a0 e3                                      mov r1, #0x3f800000
00601414  e2 35 f4 eb                                      bl #0x30eba4
00601418  18 10 9d e5                                      ldr r1, [sp, #0x18]
0060141c  00 60 a0 e1                                      mov r6, r0
00601420  b4 33 f4 eb                                      bl #0x30e2f8
00601424  00 00 50 e3                                      cmp r0, #0
00601428  20 50 9d 05                                      ldreq r5, [sp, #0x20]
0060142c  c9 ff ff 0a                                      beq #0x601358
00601430  05 10 a0 e1                                      mov r1, r5
00601434  18 00 9d e5                                      ldr r0, [sp, #0x18]
00601438  c1 ff ff ea                                      b #0x601344
0060143c  78 c0 9d e5                                      ldr ip, [sp, #0x78]
00601440  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
00601444  01 00 5c e1                                      cmp ip, r1
00601448  0e 00 00 0a                                      beq #0x601488
0060144c  0c 10 a0 e1                                      mov r1, ip
00601450  6c c0 9d e5                                      ldr ip, [sp, #0x6c]
00601454  88 00 9d e5                                      ldr r0, [sp, #0x88]
00601458  74 20 9d e5                                      ldr r2, [sp, #0x74]
0060145c  00 c0 8d e5                                      str ip, [sp]
00601460  d4 c0 9d e5                                      ldr ip, [sp, #0xd4]
00601464  d0 30 9d e5                                      ldr r3, [sp, #0xd0]
00601468  04 c0 8d e5                                      str ip, [sp, #4]
0060146c  48 c0 9d e5                                      ldr ip, [sp, #0x48]
00601470  08 c0 8d e5                                      str ip, [sp, #8]
00601474  68 c0 9d e5                                      ldr ip, [sp, #0x68]
00601478  0c c0 8d e5                                      str ip, [sp, #0xc]
0060147c  00 c0 a0 e3                                      mov ip, #0
00601480  10 c0 8d e5                                      str ip, [sp, #0x10]
00601484  48 e0 ff eb                                      bl #0x5f95ac
00601488  70 10 9d e5                                      ldr r1, [sp, #0x70]
0060148c  00 00 51 e3                                      cmp r1, #0
00601490  01 00 00 0a                                      beq #0x60149c
00601494  01 00 a0 e1                                      mov r0, r1
00601498  06 33 f4 eb                                      bl #0x30e0b8
0060149c  80 20 9d e5                                      ldr r2, [sp, #0x80]
006014a0  00 00 52 e3                                      cmp r2, #0
006014a4  01 00 00 0a                                      beq #0x6014b0
006014a8  02 00 a0 e1                                      mov r0, r2
006014ac  01 33 f4 eb                                      bl #0x30e0b8
006014b0  ac d0 8d e2                                      add sp, sp, #0xac
006014b4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006014b8  d0 00 9d e5                                      ldr r0, [sp, #0xd0]
006014bc  02 10 a0 e1                                      mov r1, r2
006014c0  89 b1 ff eb                                      bl #0x5edaec
006014c4  d4 00 8d e5                                      str r0, [sp, #0xd4]
006014c8  d0 fe ff ea                                      b #0x601010
006014cc  00 00 d4 e5                                      ldrb r0, [r4]
006014d0  82 33 f4 eb                                      bl #0x30e2e0
006014d4  00 10 a0 e1                                      mov r1, r0
006014d8  05 00 a0 e1                                      mov r0, r5
006014dc  22 36 f4 eb                                      bl #0x30ed6c
006014e0  00 10 a0 e1                                      mov r1, r0
006014e4  0b 00 a0 e1                                      mov r0, fp
006014e8  ad 35 f4 eb                                      bl #0x30eba4
006014ec  00 b0 a0 e1                                      mov fp, r0
006014f0  01 00 d4 e5                                      ldrb r0, [r4, #1]
006014f4  79 33 f4 eb                                      bl #0x30e2e0
006014f8  00 10 a0 e1                                      mov r1, r0
006014fc  05 00 a0 e1                                      mov r0, r5
00601500  19 36 f4 eb                                      bl #0x30ed6c
00601504  00 10 a0 e1                                      mov r1, r0
00601508  09 00 a0 e1                                      mov r0, sb
0060150c  a4 35 f4 eb                                      bl #0x30eba4
00601510  00 90 a0 e1                                      mov sb, r0
00601514  02 00 d4 e5                                      ldrb r0, [r4, #2]
00601518  70 33 f4 eb                                      bl #0x30e2e0
0060151c  00 10 a0 e1                                      mov r1, r0
00601520  05 00 a0 e1                                      mov r0, r5
00601524  10 36 f4 eb                                      bl #0x30ed6c
00601528  00 10 a0 e1                                      mov r1, r0
0060152c  0a 00 a0 e1                                      mov r0, sl
00601530  9b 35 f4 eb                                      bl #0x30eba4
00601534  00 a0 a0 e1                                      mov sl, r0
00601538  03 00 d4 e5                                      ldrb r0, [r4, #3]
0060153c  67 33 f4 eb                                      bl #0x30e2e0
00601540  00 10 a0 e1                                      mov r1, r0
00601544  05 00 a0 e1                                      mov r0, r5
00601548  07 36 f4 eb                                      bl #0x30ed6c
0060154c  00 10 a0 e1                                      mov r1, r0
00601550  08 00 a0 e1                                      mov r0, r8
00601554  92 35 f4 eb                                      bl #0x30eba4
00601558  05 10 a0 e1                                      mov r1, r5
0060155c  00 80 a0 e1                                      mov r8, r0
00601560  07 00 a0 e1                                      mov r0, r7
00601564  8e 35 f4 eb                                      bl #0x30eba4
00601568  06 10 a0 e1                                      mov r1, r6
0060156c  00 70 a0 e1                                      mov r7, r0
00601570  18 00 9d e5                                      ldr r0, [sp, #0x18]
00601574  5f 33 f4 eb                                      bl #0x30e2f8
00601578  00 00 50 e3                                      cmp r0, #0
0060157c  9b ff ff 1a                                      bne #0x6013f0
00601580  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00601584  24 10 9d e5                                      ldr r1, [sp, #0x24]
00601588  5a 33 f4 eb                                      bl #0x30e2f8
0060158c  00 00 50 e3                                      cmp r0, #0
00601590  16 00 00 0a                                      beq #0x6015f0
00601594  28 20 9d e5                                      ldr r2, [sp, #0x28]
00601598  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
0060159c  24 40 9d e5                                      ldr r4, [sp, #0x24]
006015a0  03 20 82 e0                                      add r2, r2, r3
006015a4  34 30 9d e5                                      ldr r3, [sp, #0x34]
006015a8  28 20 8d e5                                      str r2, [sp, #0x28]
006015ac  00 00 53 e3                                      cmp r3, #0
006015b0  51 ff ff 1a                                      bne #0x6012fc
006015b4  fe 15 a0 e3                                      mov r1, #0x3f800000
006015b8  04 00 a0 e1                                      mov r0, r4
006015bc  78 35 f4 eb                                      bl #0x30eba4
006015c0  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
006015c4  24 00 8d e5                                      str r0, [sp, #0x24]
006015c8  4a 33 f4 eb                                      bl #0x30e2f8
006015cc  00 00 50 e3                                      cmp r0, #0
006015d0  fe c5 a0 03                                      moveq ip, #0x3f800000
006015d4  20 c0 8d 05                                      streq ip, [sp, #0x20]
006015d8  4e ff ff 0a                                      beq #0x601318
006015dc  04 10 a0 e1                                      mov r1, r4
006015e0  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006015e4  70 33 f4 eb                                      bl #0x30e3ac
006015e8  20 00 8d e5                                      str r0, [sp, #0x20]
006015ec  49 ff ff ea                                      b #0x601318
006015f0  94 b0 8d e5                                      str fp, [sp, #0x94]
006015f4  98 90 8d e5                                      str sb, [sp, #0x98]
006015f8  9c a0 8d e5                                      str sl, [sp, #0x9c]
006015fc  a0 80 8d e5                                      str r8, [sp, #0xa0]
00601600  a4 30 dd e5                                      ldrb r3, [sp, #0xa4]
00601604  a8 c0 8d e2                                      add ip, sp, #0xa8
00601608  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
0060160c  03 31 8c e0                                      add r3, ip, r3, lsl #2
00601610  14 10 13 e5                                      ldr r1, [r3, #-0x14]
00601614  62 35 f4 eb                                      bl #0x30eba4
00601618  07 10 a0 e1                                      mov r1, r7
0060161c  9c 35 f4 eb                                      bl #0x30ec94
00601620  1e f3 0a eb                                      bl #0x8be2a0
00601624  44 10 9d e5                                      ldr r1, [sp, #0x44]
00601628  a8 20 8d e2                                      add r2, sp, #0xa8
0060162c  00 00 c1 e5                                      strb r0, [r1]
00601630  a5 30 dd e5                                      ldrb r3, [sp, #0xa5]
00601634  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
00601638  03 31 82 e0                                      add r3, r2, r3, lsl #2
0060163c  14 10 13 e5                                      ldr r1, [r3, #-0x14]
00601640  57 35 f4 eb                                      bl #0x30eba4
00601644  07 10 a0 e1                                      mov r1, r7
00601648  91 35 f4 eb                                      bl #0x30ec94
0060164c  13 f3 0a eb                                      bl #0x8be2a0
00601650  44 30 9d e5                                      ldr r3, [sp, #0x44]
00601654  a8 c0 8d e2                                      add ip, sp, #0xa8
00601658  01 00 c3 e5                                      strb r0, [r3, #1]
0060165c  a6 30 dd e5                                      ldrb r3, [sp, #0xa6]
00601660  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
00601664  03 31 8c e0                                      add r3, ip, r3, lsl #2
00601668  14 10 13 e5                                      ldr r1, [r3, #-0x14]
0060166c  4c 35 f4 eb                                      bl #0x30eba4
00601670  07 10 a0 e1                                      mov r1, r7
00601674  86 35 f4 eb                                      bl #0x30ec94
00601678  08 f3 0a eb                                      bl #0x8be2a0
0060167c  44 10 9d e5                                      ldr r1, [sp, #0x44]
00601680  a8 20 8d e2                                      add r2, sp, #0xa8
00601684  02 00 c1 e5                                      strb r0, [r1, #2]
00601688  a7 30 dd e5                                      ldrb r3, [sp, #0xa7]
0060168c  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
00601690  03 31 82 e0                                      add r3, r2, r3, lsl #2
00601694  14 10 13 e5                                      ldr r1, [r3, #-0x14]
00601698  41 35 f4 eb                                      bl #0x30eba4
0060169c  07 10 a0 e1                                      mov r1, r7
006016a0  7b 35 f4 eb                                      bl #0x30ec94
006016a4  fd f2 0a eb                                      bl #0x8be2a0
006016a8  48 30 9d e5                                      ldr r3, [sp, #0x48]
006016ac  54 c0 9d e5                                      ldr ip, [sp, #0x54]
006016b0  44 10 9d e5                                      ldr r1, [sp, #0x44]
006016b4  0c 00 53 e1                                      cmp r3, ip
006016b8  03 00 c1 e5                                      strb r0, [r1, #3]
006016bc  04 00 00 0a                                      beq #0x6016d4
006016c0  18 20 9d e5                                      ldr r2, [sp, #0x18]
006016c4  04 10 81 e2                                      add r1, r1, #4
006016c8  44 10 8d e5                                      str r1, [sp, #0x44]
006016cc  1c 20 8d e5                                      str r2, [sp, #0x1c]
006016d0  d5 fe ff ea                                      b #0x60122c
006016d4  68 30 9d e5                                      ldr r3, [sp, #0x68]
006016d8  64 c0 9d e5                                      ldr ip, [sp, #0x64]
006016dc  0c 00 53 e1                                      cmp r3, ip
006016e0  55 ff ff 0a                                      beq #0x60143c
006016e4  84 10 9d e5                                      ldr r1, [sp, #0x84]
006016e8  74 20 9d e5                                      ldr r2, [sp, #0x74]
006016ec  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
006016f0  02 10 81 e0                                      add r1, r1, r2
006016f4  84 10 8d e5                                      str r1, [sp, #0x84]
006016f8  40 30 8d e5                                      str r3, [sp, #0x40]
006016fc  a9 fe ff ea                                      b #0x6011a8
00601700  d4 c0 9d e5                                      ldr ip, [sp, #0xd4]
00601704  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
00601708  d0 20 9d e5                                      ldr r2, [sp, #0xd0]
0060170c  70 30 8d e5                                      str r3, [sp, #0x70]
00601710  74 c0 8d e5                                      str ip, [sp, #0x74]
00601714  78 10 8d e5                                      str r1, [sp, #0x78]
00601718  88 20 8d e5                                      str r2, [sp, #0x88]
0060171c  82 fe ff ea                                      b #0x60112c
00601720  14 30 94 e5                                      ldr r3, [r4, #0x14]
00601724  64 c0 9d e5                                      ldr ip, [sp, #0x64]
00601728  00 00 58 e3                                      cmp r8, #0
0060172c  0c 00 53 01                                      cmpeq r3, ip
00601730  3a fe ff 1a                                      bne #0x601020
00601734  6c c0 9d e5                                      ldr ip, [sp, #0x6c]
00601738  18 20 94 e5                                      ldr r2, [r4, #0x18]
0060173c  20 00 94 e5                                      ldr r0, [r4, #0x20]
00601740  08 10 94 e5                                      ldr r1, [r4, #8]
00601744  00 c0 8d e5                                      str ip, [sp]
00601748  d4 c0 9d e5                                      ldr ip, [sp, #0xd4]
0060174c  d0 30 9d e5                                      ldr r3, [sp, #0xd0]
00601750  04 c0 8d e5                                      str ip, [sp, #4]
00601754  54 c0 9d e5                                      ldr ip, [sp, #0x54]
00601758  08 c0 8d e5                                      str ip, [sp, #8]
0060175c  64 c0 9d e5                                      ldr ip, [sp, #0x64]
00601760  0c c0 8d e5                                      str ip, [sp, #0xc]
00601764  00 c0 a0 e3                                      mov ip, #0
00601768  10 c0 8d e5                                      str ip, [sp, #0x10]
0060176c  8e df ff eb                                      bl #0x5f95ac
00601770  4e ff ff ea                                      b #0x6014b0
; mapping-symbol data/literal pool
00601774  b0 3a 39 00 34 1f 00 00                          .byte 0xb0, 0x3a, 0x39, 0x00, 0x34, 0x1f, 0x00, 0x00

; FUNCTION 0x0060177c, declared_size=132, range_size=132, mode=arm
; class-group: glitch::video::CImage
; alias: _ZN6glitch5video6CImage13copyToScalingERKN5boost13intrusive_ptrIS1_EEi
; demangled: glitch::video::CImage::copyToScaling(boost::intrusive_ptr<glitch::video::CImage> const&, int)
; decoder-mode: arm
0060177c  30 40 2d e9                                      push {r4, r5, lr}
00601780  00 40 91 e5                                      ldr r4, [r1]
00601784  1c d0 4d e2                                      sub sp, sp, #0x1c
00601788  02 c0 a0 e1                                      mov ip, r2
0060178c  00 00 54 e3                                      cmp r4, #0
00601790  00 50 a0 e1                                      mov r5, r0
00601794  0c 00 00 0a                                      beq #0x6017cc
00601798  10 30 90 e5                                      ldr r3, [r0, #0x10]
0060179c  10 20 94 e5                                      ldr r2, [r4, #0x10]
006017a0  03 00 52 e1                                      cmp r2, r3
006017a4  14 30 94 15                                      ldrne r3, [r4, #0x14]
006017a8  09 00 00 0a                                      beq #0x6017d4
006017ac  20 e0 94 e5                                      ldr lr, [r4, #0x20]
006017b0  08 10 94 e5                                      ldr r1, [r4, #8]
006017b4  05 00 a0 e1                                      mov r0, r5
006017b8  04 c0 8d e5                                      str ip, [sp, #4]
006017bc  00 c0 a0 e3                                      mov ip, #0
006017c0  00 e0 8d e5                                      str lr, [sp]
006017c4  08 c0 8d e5                                      str ip, [sp, #8]
006017c8  ff fd ff eb                                      bl #0x600fcc
006017cc  1c d0 8d e2                                      add sp, sp, #0x1c
006017d0  30 80 bd e8                                      pop {r4, r5, pc}
006017d4  14 30 94 e5                                      ldr r3, [r4, #0x14]
006017d8  14 e0 90 e5                                      ldr lr, [r0, #0x14]
006017dc  0e 00 53 e1                                      cmp r3, lr
006017e0  f1 ff ff 1a                                      bne #0x6017ac
006017e4  00 c0 a0 e3                                      mov ip, #0
006017e8  0c 30 a0 e1                                      mov r3, ip
006017ec  10 20 8d e2                                      add r2, sp, #0x10
006017f0  10 c0 8d e5                                      str ip, [sp, #0x10]
006017f4  14 c0 8d e5                                      str ip, [sp, #0x14]
006017f8  43 fc ff eb                                      bl #0x60090c
006017fc  f2 ff ff ea                                      b #0x6017cc

; FUNCTION 0x00601800, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CImage
; alias: _ZN6glitch5video6CImage22copyToScalingBoxFilterERKN5boost13intrusive_ptrIS1_EEi
; demangled: glitch::video::CImage::copyToScalingBoxFilter(boost::intrusive_ptr<glitch::video::CImage> const&, int)
; decoder-mode: arm
00601800  dd ff ff ea                                      b #0x60177c

; FUNCTION 0x00601804, declared_size=180, range_size=180, mode=arm
; class-group: glitch::video::CImage
; alias: _ZN6glitch5video6CImageD1Ev
; demangled: glitch::video::CImage::~CImage()
; decoder-mode: arm
00601804  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00601808  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
0060180c  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
00601810  29 10 d0 e5                                      ldrb r1, [r0, #0x29]
00601814  03 30 8f e0                                      add r3, pc, r3
00601818  02 20 93 e7                                      ldr r2, [r3, r2]
0060181c  00 00 51 e3                                      cmp r1, #0
00601820  00 40 a0 e1                                      mov r4, r0
00601824  08 20 82 e2                                      add r2, r2, #8
00601828  00 20 80 e5                                      str r2, [r0]
0060182c  1d 00 00 0a                                      beq #0x6018a8
00601830  08 00 90 e5                                      ldr r0, [r0, #8]
00601834  00 00 50 e3                                      cmp r0, #0
00601838  00 00 00 0a                                      beq #0x601840
0060183c  1d 32 f4 eb                                      bl #0x30e0b8
00601840  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00601844  00 00 53 e3                                      cmp r3, #0
00601848  16 00 00 0a                                      beq #0x6018a8
0060184c  28 20 d4 e5                                      ldrb r2, [r4, #0x28]
00601850  00 00 52 e3                                      cmp r2, #0
00601854  11 00 00 0a                                      beq #0x6018a0
00601858  00 00 93 e5                                      ldr r0, [r3]
0060185c  00 00 50 e3                                      cmp r0, #0
00601860  0e 00 00 0a                                      beq #0x6018a0
00601864  00 60 a0 e3                                      mov r6, #0
00601868  04 50 a0 e3                                      mov r5, #4
0060186c  06 70 a0 e1                                      mov r7, r6
00601870  10 32 f4 eb                                      bl #0x30e0b8
00601874  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00601878  04 20 85 e2                                      add r2, r5, #4
0060187c  06 70 83 e7                                      str r7, [r3, r6]
00601880  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00601884  05 60 a0 e1                                      mov r6, r5
00601888  05 00 93 e7                                      ldr r0, [r3, r5]
0060188c  02 50 a0 e1                                      mov r5, r2
00601890  00 00 50 e3                                      cmp r0, #0
00601894  f5 ff ff 1a                                      bne #0x601870
00601898  00 00 53 e3                                      cmp r3, #0
0060189c  01 00 00 0a                                      beq #0x6018a8
006018a0  03 00 a0 e1                                      mov r0, r3
006018a4  03 32 f4 eb                                      bl #0x30e0b8
006018a8  04 00 a0 e1                                      mov r0, r4
006018ac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
006018b0  7c 32 39 00 10 06 00 00                          .byte 0x7c, 0x32, 0x39, 0x00, 0x10, 0x06, 0x00, 0x00

; FUNCTION 0x006018b8, declared_size=180, range_size=180, mode=arm
; class-group: glitch::video::CImage
; alias: _ZN6glitch5video6CImageD2Ev
; demangled: glitch::video::CImage::~CImage()
; decoder-mode: arm
006018b8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006018bc  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
006018c0  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
006018c4  29 10 d0 e5                                      ldrb r1, [r0, #0x29]
006018c8  03 30 8f e0                                      add r3, pc, r3
006018cc  02 20 93 e7                                      ldr r2, [r3, r2]
006018d0  00 00 51 e3                                      cmp r1, #0
006018d4  00 40 a0 e1                                      mov r4, r0
006018d8  08 20 82 e2                                      add r2, r2, #8
006018dc  00 20 80 e5                                      str r2, [r0]
006018e0  1d 00 00 0a                                      beq #0x60195c
006018e4  08 00 90 e5                                      ldr r0, [r0, #8]
006018e8  00 00 50 e3                                      cmp r0, #0
006018ec  00 00 00 0a                                      beq #0x6018f4
006018f0  f0 31 f4 eb                                      bl #0x30e0b8
006018f4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006018f8  00 00 53 e3                                      cmp r3, #0
006018fc  16 00 00 0a                                      beq #0x60195c
00601900  28 20 d4 e5                                      ldrb r2, [r4, #0x28]
00601904  00 00 52 e3                                      cmp r2, #0
00601908  11 00 00 0a                                      beq #0x601954
0060190c  00 00 93 e5                                      ldr r0, [r3]
00601910  00 00 50 e3                                      cmp r0, #0
00601914  0e 00 00 0a                                      beq #0x601954
00601918  00 60 a0 e3                                      mov r6, #0
0060191c  04 50 a0 e3                                      mov r5, #4
00601920  06 70 a0 e1                                      mov r7, r6
00601924  e3 31 f4 eb                                      bl #0x30e0b8
00601928  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0060192c  04 20 85 e2                                      add r2, r5, #4
00601930  06 70 83 e7                                      str r7, [r3, r6]
00601934  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00601938  05 60 a0 e1                                      mov r6, r5
0060193c  05 00 93 e7                                      ldr r0, [r3, r5]
00601940  02 50 a0 e1                                      mov r5, r2
00601944  00 00 50 e3                                      cmp r0, #0
00601948  f5 ff ff 1a                                      bne #0x601924
0060194c  00 00 53 e3                                      cmp r3, #0
00601950  01 00 00 0a                                      beq #0x60195c
00601954  03 00 a0 e1                                      mov r0, r3
00601958  d6 31 f4 eb                                      bl #0x30e0b8
0060195c  04 00 a0 e1                                      mov r0, r4
00601960  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00601964  c8 31 39 00 10 06 00 00                          .byte 0xc8, 0x31, 0x39, 0x00, 0x10, 0x06, 0x00, 0x00

; FUNCTION 0x0060196c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::CImage
; alias: _ZN6glitch5video6CImageD0Ev
; demangled: glitch::video::CImage::~CImage()
; decoder-mode: arm
0060196c  10 40 2d e9                                      push {r4, lr}
00601970  00 40 a0 e1                                      mov r4, r0
00601974  a2 ff ff eb                                      bl #0x601804
00601978  04 00 a0 e1                                      mov r0, r4
0060197c  4b 32 f4 eb                                      bl #0x30e2b0
00601980  04 00 a0 e1                                      mov r0, r4
00601984  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00601988, declared_size=392, range_size=392, mode=arm
; class-group: glitch::video::CImage
; alias: _ZN6glitch5video6CImage8initDataEb
; demangled: glitch::video::CImage::initData(bool)
; decoder-mode: arm
00601988  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0060198c  00 40 a0 e1                                      mov r4, r0
00601990  01 50 a0 e1                                      mov r5, r1
00601994  20 00 90 e5                                      ldr r0, [r0, #0x20]
00601998  10 10 94 e5                                      ldr r1, [r4, #0x10]
0060199c  52 b0 ff eb                                      bl #0x5edaec
006019a0  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
006019a4  18 00 84 e5                                      str r0, [r4, #0x18]
006019a8  08 10 94 e5                                      ldr r1, [r4, #8]
006019ac  00 00 53 e3                                      cmp r3, #0
006019b0  14 30 94 05                                      ldreq r3, [r4, #0x14]
006019b4  4c a1 9f e5                                      ldr sl, [pc, #0x14c]
006019b8  93 00 00 00                                      muleq r0, r3, r0
006019bc  0a a0 8f e0                                      add sl, pc, sl
006019c0  1c 00 84 05                                      streq r0, [r4, #0x1c]
006019c4  00 00 51 e3                                      cmp r1, #0
006019c8  4a 00 00 0a                                      beq #0x601af8
006019cc  00 00 55 e3                                      cmp r5, #0
006019d0  07 00 00 0a                                      beq #0x6019f4
006019d4  28 30 d4 e5                                      ldrb r3, [r4, #0x28]
006019d8  00 20 a0 e3                                      mov r2, #0
006019dc  24 20 84 e5                                      str r2, [r4, #0x24]
006019e0  02 00 53 e1                                      cmp r3, r2
006019e4  02 00 00 0a                                      beq #0x6019f4
006019e8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006019ec  02 00 53 e1                                      cmp r3, r2
006019f0  00 00 00 0a                                      beq #0x6019f8
006019f4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
006019f8  10 20 94 e5                                      ldr r2, [r4, #0x10]
006019fc  14 30 94 e5                                      ldr r3, [r4, #0x14]
00601a00  01 00 52 e3                                      cmp r2, #1
00601a04  01 00 53 03                                      cmpeq r3, #1
00601a08  04 00 a0 03                                      moveq r0, #4
00601a0c  0b 00 00 0a                                      beq #0x601a40
00601a10  01 00 a0 e3                                      mov r0, #1
00601a14  01 00 52 e3                                      cmp r2, #1
00601a18  a2 20 a0 81                                      lsrhi r2, r2, #1
00601a1c  01 00 53 e3                                      cmp r3, #1
00601a20  a3 30 a0 81                                      lsrhi r3, r3, #1
00601a24  01 00 52 e3                                      cmp r2, #1
00601a28  01 00 53 03                                      cmpeq r3, #1
00601a2c  01 00 80 e2                                      add r0, r0, #1
00601a30  f7 ff ff 1a                                      bne #0x601a14
00601a34  01 30 40 e2                                      sub r3, r0, #1
00601a38  24 30 84 e5                                      str r3, [r4, #0x24]
00601a3c  00 01 a0 e1                                      lsl r0, r0, #2
00601a40  00 10 a0 e3                                      mov r1, #0
00601a44  d7 c9 fc eb                                      bl #0x5341a8
00601a48  10 60 94 e5                                      ldr r6, [r4, #0x10]
00601a4c  14 50 94 e5                                      ldr r5, [r4, #0x14]
00601a50  00 b0 a0 e1                                      mov fp, r0
00601a54  0c 00 84 e5                                      str r0, [r4, #0xc]
00601a58  01 00 55 e3                                      cmp r5, #1
00601a5c  01 00 56 03                                      cmpeq r6, #1
00601a60  00 70 a0 03                                      moveq r7, #0
00601a64  01 70 a0 13                                      movne r7, #1
00601a68  1f 00 00 0a                                      beq #0x601aec
00601a6c  98 30 9f e5                                      ldr r3, [pc, #0x98]
00601a70  00 80 a0 e3                                      mov r8, #0
00601a74  08 70 a0 e1                                      mov r7, r8
00601a78  03 a0 9a e7                                      ldr sl, [sl, r3]
00601a7c  00 00 00 ea                                      b #0x601a84
00601a80  0c b0 94 e5                                      ldr fp, [r4, #0xc]
00601a84  20 30 94 e5                                      ldr r3, [r4, #0x20]
00601a88  28 20 a0 e3                                      mov r2, #0x28
00601a8c  01 00 56 e3                                      cmp r6, #1
00601a90  92 a3 23 e0                                      mla r3, r2, r3, sl
00601a94  a6 60 a0 81                                      lsrhi r6, r6, #1
00601a98  15 90 d3 e5                                      ldrb sb, [r3, #0x15]
00601a9c  01 00 55 e3                                      cmp r5, #1
00601aa0  a5 50 a0 81                                      lsrhi r5, r5, #1
00601aa4  99 06 09 e0                                      mul sb, sb, r6
00601aa8  00 10 a0 e3                                      mov r1, #0
00601aac  95 09 09 e0                                      mul sb, r5, sb
00601ab0  09 00 a0 e1                                      mov r0, sb
00601ab4  bb c9 fc eb                                      bl #0x5341a8
00601ab8  07 01 8b e7                                      str r0, [fp, r7, lsl #2]
00601abc  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00601ac0  08 10 a0 e1                                      mov r1, r8
00601ac4  09 20 a0 e1                                      mov r2, sb
00601ac8  07 01 93 e7                                      ldr r0, [r3, r7, lsl #2]
00601acc  63 32 f4 eb                                      bl #0x30e460
00601ad0  01 00 56 e3                                      cmp r6, #1
00601ad4  01 00 55 03                                      cmpeq r5, #1
00601ad8  01 70 87 e2                                      add r7, r7, #1
00601adc  0f 80 88 e2                                      add r8, r8, #0xf
00601ae0  e6 ff ff 1a                                      bne #0x601a80
00601ae4  0c b0 94 e5                                      ldr fp, [r4, #0xc]
00601ae8  07 71 a0 e1                                      lsl r7, r7, #2
00601aec  00 30 a0 e3                                      mov r3, #0
00601af0  07 30 8b e7                                      str r3, [fp, r7]
00601af4  be ff ff ea                                      b #0x6019f4
00601af8  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
00601afc  a9 c9 fc eb                                      bl #0x5341a8
00601b00  08 00 84 e5                                      str r0, [r4, #8]
00601b04  b0 ff ff ea                                      b #0x6019cc
; mapping-symbol data/literal pool
00601b08  d4 30 39 00 34 1f 00 00                          .byte 0xd4, 0x30, 0x39, 0x00, 0x34, 0x1f, 0x00, 0x00

; FUNCTION 0x00601b10, declared_size=276, range_size=276, mode=arm
; class-group: glitch::video::CImage
; alias: _ZN6glitch5video6CImageC1ERKN5boost13intrusive_ptrIS1_EERKNS_4core10position2dIiEERKNS7_11dimension2dIiEE
; demangled: glitch::video::CImage::CImage(boost::intrusive_ptr<glitch::video::CImage> const&, glitch::core::position2d<int> const&, glitch::core::dimension2d<int> const&)
; decoder-mode: arm
00601b10  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00601b14  fc 60 9f e5                                      ldr r6, [pc, #0xfc]
00601b18  fc 70 9f e5                                      ldr r7, [pc, #0xfc]
00601b1c  00 50 a0 e3                                      mov r5, #0
00601b20  06 60 8f e0                                      add r6, pc, r6
00601b24  07 70 96 e7                                      ldr r7, [r6, r7]
00601b28  01 c0 a0 e3                                      mov ip, #1
00601b2c  04 50 80 e5                                      str r5, [r0, #4]
00601b30  08 70 87 e2                                      add r7, r7, #8
00601b34  00 70 80 e5                                      str r7, [r0]
00601b38  27 70 a0 e3                                      mov r7, #0x27
00601b3c  20 70 80 e5                                      str r7, [r0, #0x20]
00601b40  08 50 80 e5                                      str r5, [r0, #8]
00601b44  0c 50 80 e5                                      str r5, [r0, #0xc]
00601b48  10 50 80 e5                                      str r5, [r0, #0x10]
00601b4c  14 50 80 e5                                      str r5, [r0, #0x14]
00601b50  18 50 80 e5                                      str r5, [r0, #0x18]
00601b54  1c 50 80 e5                                      str r5, [r0, #0x1c]
00601b58  24 50 80 e5                                      str r5, [r0, #0x24]
00601b5c  28 50 c0 e5                                      strb r5, [r0, #0x28]
00601b60  29 c0 c0 e5                                      strb ip, [r0, #0x29]
00601b64  01 70 a0 e1                                      mov r7, r1
00601b68  00 10 91 e5                                      ldr r1, [r1]
00601b6c  1c d0 4d e2                                      sub sp, sp, #0x1c
00601b70  00 40 a0 e1                                      mov r4, r0
00601b74  05 00 51 e1                                      cmp r1, r5
00601b78  02 80 a0 e1                                      mov r8, r2
00601b7c  03 a0 a0 e1                                      mov sl, r3
00601b80  21 00 00 0a                                      beq #0x601c0c
00601b84  20 30 91 e5                                      ldr r3, [r1, #0x20]
00601b88  0c 10 a0 e1                                      mov r1, ip
00601b8c  20 30 80 e5                                      str r3, [r0, #0x20]
00601b90  00 30 9a e5                                      ldr r3, [sl]
00601b94  10 30 80 e5                                      str r3, [r0, #0x10]
00601b98  04 30 9a e5                                      ldr r3, [sl, #4]
00601b9c  14 30 80 e5                                      str r3, [r0, #0x14]
00601ba0  00 30 97 e5                                      ldr r3, [r7]
00601ba4  28 30 d3 e5                                      ldrb r3, [r3, #0x28]
00601ba8  28 30 c0 e5                                      strb r3, [r0, #0x28]
00601bac  75 ff ff eb                                      bl #0x601988
00601bb0  68 20 9f e5                                      ldr r2, [pc, #0x68]
00601bb4  00 30 97 e5                                      ldr r3, [r7]
00601bb8  20 00 94 e5                                      ldr r0, [r4, #0x20]
00601bbc  02 10 96 e7                                      ldr r1, [r6, r2]
00601bc0  28 c0 a0 e3                                      mov ip, #0x28
00601bc4  18 20 93 e5                                      ldr r2, [r3, #0x18]
00601bc8  9c 10 21 e0                                      mla r1, ip, r0, r1
00601bcc  08 30 93 e5                                      ldr r3, [r3, #8]
00601bd0  04 c0 98 e5                                      ldr ip, [r8, #4]
00601bd4  15 10 d1 e5                                      ldrb r1, [r1, #0x15]
00601bd8  00 80 98 e5                                      ldr r8, [r8]
00601bdc  9c 32 23 e0                                      mla r3, ip, r2, r3
00601be0  08 60 94 e5                                      ldr r6, [r4, #8]
00601be4  04 c0 9a e5                                      ldr ip, [sl, #4]
00601be8  18 e0 94 e5                                      ldr lr, [r4, #0x18]
00601bec  00 70 9a e5                                      ldr r7, [sl]
00601bf0  98 31 21 e0                                      mla r1, r8, r1, r3
00601bf4  00 30 a0 e1                                      mov r3, r0
00601bf8  40 40 8d e8                                      stm sp, {r6, lr}
00601bfc  08 70 8d e5                                      str r7, [sp, #8]
00601c00  0c c0 8d e5                                      str ip, [sp, #0xc]
00601c04  10 50 8d e5                                      str r5, [sp, #0x10]
00601c08  67 de ff eb                                      bl #0x5f95ac
00601c0c  04 00 a0 e1                                      mov r0, r4
00601c10  1c d0 8d e2                                      add sp, sp, #0x1c
00601c14  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
00601c18  70 2f 39 00 10 06 00 00 34 1f 00 00              .byte 0x70, 0x2f, 0x39, 0x00, 0x10, 0x06, 0x00, 0x00, 0x34, 0x1f, 0x00, 0x00

; FUNCTION 0x00601c24, declared_size=276, range_size=276, mode=arm
; class-group: glitch::video::CImage
; alias: _ZN6glitch5video6CImageC2ERKN5boost13intrusive_ptrIS1_EERKNS_4core10position2dIiEERKNS7_11dimension2dIiEE
; demangled: glitch::video::CImage::CImage(boost::intrusive_ptr<glitch::video::CImage> const&, glitch::core::position2d<int> const&, glitch::core::dimension2d<int> const&)
; decoder-mode: arm
00601c24  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00601c28  fc 60 9f e5                                      ldr r6, [pc, #0xfc]
00601c2c  fc 70 9f e5                                      ldr r7, [pc, #0xfc]
00601c30  00 50 a0 e3                                      mov r5, #0
00601c34  06 60 8f e0                                      add r6, pc, r6
00601c38  07 70 96 e7                                      ldr r7, [r6, r7]
00601c3c  01 c0 a0 e3                                      mov ip, #1
00601c40  04 50 80 e5                                      str r5, [r0, #4]
00601c44  08 70 87 e2                                      add r7, r7, #8
00601c48  00 70 80 e5                                      str r7, [r0]
00601c4c  27 70 a0 e3                                      mov r7, #0x27
00601c50  20 70 80 e5                                      str r7, [r0, #0x20]
00601c54  08 50 80 e5                                      str r5, [r0, #8]
00601c58  0c 50 80 e5                                      str r5, [r0, #0xc]
00601c5c  10 50 80 e5                                      str r5, [r0, #0x10]
00601c60  14 50 80 e5                                      str r5, [r0, #0x14]
00601c64  18 50 80 e5                                      str r5, [r0, #0x18]
00601c68  1c 50 80 e5                                      str r5, [r0, #0x1c]
00601c6c  24 50 80 e5                                      str r5, [r0, #0x24]
00601c70  28 50 c0 e5                                      strb r5, [r0, #0x28]
00601c74  29 c0 c0 e5                                      strb ip, [r0, #0x29]
00601c78  01 70 a0 e1                                      mov r7, r1
00601c7c  00 10 91 e5                                      ldr r1, [r1]
00601c80  1c d0 4d e2                                      sub sp, sp, #0x1c
00601c84  00 40 a0 e1                                      mov r4, r0
00601c88  05 00 51 e1                                      cmp r1, r5
00601c8c  02 80 a0 e1                                      mov r8, r2
00601c90  03 a0 a0 e1                                      mov sl, r3
00601c94  21 00 00 0a                                      beq #0x601d20
00601c98  20 30 91 e5                                      ldr r3, [r1, #0x20]
00601c9c  0c 10 a0 e1                                      mov r1, ip
00601ca0  20 30 80 e5                                      str r3, [r0, #0x20]
00601ca4  00 30 9a e5                                      ldr r3, [sl]
00601ca8  10 30 80 e5                                      str r3, [r0, #0x10]
00601cac  04 30 9a e5                                      ldr r3, [sl, #4]
00601cb0  14 30 80 e5                                      str r3, [r0, #0x14]
00601cb4  00 30 97 e5                                      ldr r3, [r7]
00601cb8  28 30 d3 e5                                      ldrb r3, [r3, #0x28]
00601cbc  28 30 c0 e5                                      strb r3, [r0, #0x28]
00601cc0  30 ff ff eb                                      bl #0x601988
00601cc4  68 20 9f e5                                      ldr r2, [pc, #0x68]
00601cc8  00 30 97 e5                                      ldr r3, [r7]
00601ccc  20 00 94 e5                                      ldr r0, [r4, #0x20]
00601cd0  02 10 96 e7                                      ldr r1, [r6, r2]
00601cd4  28 c0 a0 e3                                      mov ip, #0x28
00601cd8  18 20 93 e5                                      ldr r2, [r3, #0x18]
00601cdc  9c 10 21 e0                                      mla r1, ip, r0, r1
00601ce0  08 30 93 e5                                      ldr r3, [r3, #8]
00601ce4  04 c0 98 e5                                      ldr ip, [r8, #4]
00601ce8  15 10 d1 e5                                      ldrb r1, [r1, #0x15]
00601cec  00 80 98 e5                                      ldr r8, [r8]
00601cf0  9c 32 23 e0                                      mla r3, ip, r2, r3
00601cf4  08 60 94 e5                                      ldr r6, [r4, #8]
00601cf8  04 c0 9a e5                                      ldr ip, [sl, #4]
00601cfc  18 e0 94 e5                                      ldr lr, [r4, #0x18]
00601d00  00 70 9a e5                                      ldr r7, [sl]
00601d04  98 31 21 e0                                      mla r1, r8, r1, r3
00601d08  00 30 a0 e1                                      mov r3, r0
00601d0c  40 40 8d e8                                      stm sp, {r6, lr}
00601d10  08 70 8d e5                                      str r7, [sp, #8]
00601d14  0c c0 8d e5                                      str ip, [sp, #0xc]
00601d18  10 50 8d e5                                      str r5, [sp, #0x10]
00601d1c  22 de ff eb                                      bl #0x5f95ac
00601d20  04 00 a0 e1                                      mov r0, r4
00601d24  1c d0 8d e2                                      add sp, sp, #0x1c
00601d28  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
00601d2c  5c 2e 39 00 10 06 00 00 34 1f 00 00              .byte 0x5c, 0x2e, 0x39, 0x00, 0x10, 0x06, 0x00, 0x00, 0x34, 0x1f, 0x00, 0x00

; FUNCTION 0x00601d38, declared_size=376, range_size=376, mode=arm
; class-group: glitch::video::CImage
; alias: _ZN6glitch5video6CImageC1ENS0_14E_PIXEL_FORMATERKN5boost13intrusive_ptrIS1_EE
; demangled: glitch::video::CImage::CImage(glitch::video::E_PIXEL_FORMAT, boost::intrusive_ptr<glitch::video::CImage> const&)
; decoder-mode: arm
00601d38  68 31 9f e5                                      ldr r3, [pc, #0x168]
00601d3c  68 c1 9f e5                                      ldr ip, [pc, #0x168]
00601d40  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00601d44  03 30 8f e0                                      add r3, pc, r3
00601d48  0c c0 93 e7                                      ldr ip, [r3, ip]
00601d4c  00 50 a0 e3                                      mov r5, #0
00601d50  01 60 a0 e3                                      mov r6, #1
00601d54  08 c0 8c e2                                      add ip, ip, #8
00601d58  00 c0 80 e5                                      str ip, [r0]
00601d5c  20 10 80 e5                                      str r1, [r0, #0x20]
00601d60  04 50 80 e5                                      str r5, [r0, #4]
00601d64  08 50 80 e5                                      str r5, [r0, #8]
00601d68  0c 50 80 e5                                      str r5, [r0, #0xc]
00601d6c  10 50 80 e5                                      str r5, [r0, #0x10]
00601d70  14 50 80 e5                                      str r5, [r0, #0x14]
00601d74  18 50 80 e5                                      str r5, [r0, #0x18]
00601d78  1c 50 80 e5                                      str r5, [r0, #0x1c]
00601d7c  24 50 80 e5                                      str r5, [r0, #0x24]
00601d80  28 50 c0 e5                                      strb r5, [r0, #0x28]
00601d84  29 60 c0 e5                                      strb r6, [r0, #0x29]
00601d88  02 70 a0 e1                                      mov r7, r2
00601d8c  00 20 92 e5                                      ldr r2, [r2]
00601d90  1c d0 4d e2                                      sub sp, sp, #0x1c
00601d94  00 40 a0 e1                                      mov r4, r0
00601d98  05 00 52 e1                                      cmp r2, r5
00601d9c  3e 00 00 0a                                      beq #0x601e9c
00601da0  10 30 92 e5                                      ldr r3, [r2, #0x10]
00601da4  06 10 a0 e1                                      mov r1, r6
00601da8  10 30 80 e5                                      str r3, [r0, #0x10]
00601dac  14 30 92 e5                                      ldr r3, [r2, #0x14]
00601db0  14 30 80 e5                                      str r3, [r0, #0x14]
00601db4  00 30 97 e5                                      ldr r3, [r7]
00601db8  28 30 d3 e5                                      ldrb r3, [r3, #0x28]
00601dbc  28 30 c0 e5                                      strb r3, [r0, #0x28]
00601dc0  f0 fe ff eb                                      bl #0x601988
00601dc4  00 10 97 e5                                      ldr r1, [r7]
00601dc8  18 60 94 e5                                      ldr r6, [r4, #0x18]
00601dcc  08 70 94 e5                                      ldr r7, [r4, #8]
00601dd0  10 e0 94 e5                                      ldr lr, [r4, #0x10]
00601dd4  14 c0 94 e5                                      ldr ip, [r4, #0x14]
00601dd8  18 20 91 e5                                      ldr r2, [r1, #0x18]
00601ddc  20 00 91 e5                                      ldr r0, [r1, #0x20]
00601de0  20 30 94 e5                                      ldr r3, [r4, #0x20]
00601de4  08 10 91 e5                                      ldr r1, [r1, #8]
00601de8  00 70 8d e5                                      str r7, [sp]
00601dec  40 40 8d e9                                      stmib sp, {r6, lr}
00601df0  0c c0 8d e5                                      str ip, [sp, #0xc]
00601df4  10 50 8d e5                                      str r5, [sp, #0x10]
00601df8  eb dd ff eb                                      bl #0x5f95ac
00601dfc  05 00 50 e1                                      cmp r0, r5
00601e00  25 00 00 1a                                      bne #0x601e9c
00601e04  08 00 94 e5                                      ldr r0, [r4, #8]
00601e08  27 30 a0 e3                                      mov r3, #0x27
00601e0c  20 30 84 e5                                      str r3, [r4, #0x20]
00601e10  05 00 50 e1                                      cmp r0, r5
00601e14  00 00 00 0a                                      beq #0x601e1c
00601e18  a6 30 f4 eb                                      bl #0x30e0b8
00601e1c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00601e20  00 60 a0 e3                                      mov r6, #0
00601e24  08 60 84 e5                                      str r6, [r4, #8]
00601e28  06 00 53 e1                                      cmp r3, r6
00601e2c  15 00 00 0a                                      beq #0x601e88
00601e30  28 20 d4 e5                                      ldrb r2, [r4, #0x28]
00601e34  06 00 52 e1                                      cmp r2, r6
00601e38  10 00 00 0a                                      beq #0x601e80
00601e3c  00 00 93 e5                                      ldr r0, [r3]
00601e40  06 00 50 e1                                      cmp r0, r6
00601e44  0d 00 00 0a                                      beq #0x601e80
00601e48  04 50 a0 e3                                      mov r5, #4
00601e4c  06 70 a0 e1                                      mov r7, r6
00601e50  98 30 f4 eb                                      bl #0x30e0b8
00601e54  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00601e58  04 20 85 e2                                      add r2, r5, #4
00601e5c  06 70 83 e7                                      str r7, [r3, r6]
00601e60  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00601e64  05 60 a0 e1                                      mov r6, r5
00601e68  05 00 93 e7                                      ldr r0, [r3, r5]
00601e6c  02 50 a0 e1                                      mov r5, r2
00601e70  00 00 50 e3                                      cmp r0, #0
00601e74  f5 ff ff 1a                                      bne #0x601e50
00601e78  00 00 53 e3                                      cmp r3, #0
00601e7c  01 00 00 0a                                      beq #0x601e88
00601e80  03 00 a0 e1                                      mov r0, r3
00601e84  8b 30 f4 eb                                      bl #0x30e0b8
00601e88  00 30 a0 e3                                      mov r3, #0
00601e8c  1c 30 84 e5                                      str r3, [r4, #0x1c]
00601e90  29 30 c4 e5                                      strb r3, [r4, #0x29]
00601e94  14 30 84 e5                                      str r3, [r4, #0x14]
00601e98  10 30 84 e5                                      str r3, [r4, #0x10]
00601e9c  04 00 a0 e1                                      mov r0, r4
00601ea0  1c d0 8d e2                                      add sp, sp, #0x1c
00601ea4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
00601ea8  4c 2d 39 00 10 06 00 00                          .byte 0x4c, 0x2d, 0x39, 0x00, 0x10, 0x06, 0x00, 0x00

; FUNCTION 0x00601eb0, declared_size=376, range_size=376, mode=arm
; class-group: glitch::video::CImage
; alias: _ZN6glitch5video6CImageC2ENS0_14E_PIXEL_FORMATERKN5boost13intrusive_ptrIS1_EE
; demangled: glitch::video::CImage::CImage(glitch::video::E_PIXEL_FORMAT, boost::intrusive_ptr<glitch::video::CImage> const&)
; decoder-mode: arm
00601eb0  68 31 9f e5                                      ldr r3, [pc, #0x168]
00601eb4  68 c1 9f e5                                      ldr ip, [pc, #0x168]
00601eb8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00601ebc  03 30 8f e0                                      add r3, pc, r3
00601ec0  0c c0 93 e7                                      ldr ip, [r3, ip]
00601ec4  00 50 a0 e3                                      mov r5, #0
00601ec8  01 60 a0 e3                                      mov r6, #1
00601ecc  08 c0 8c e2                                      add ip, ip, #8
00601ed0  00 c0 80 e5                                      str ip, [r0]
00601ed4  20 10 80 e5                                      str r1, [r0, #0x20]
00601ed8  04 50 80 e5                                      str r5, [r0, #4]
00601edc  08 50 80 e5                                      str r5, [r0, #8]
00601ee0  0c 50 80 e5                                      str r5, [r0, #0xc]
00601ee4  10 50 80 e5                                      str r5, [r0, #0x10]
00601ee8  14 50 80 e5                                      str r5, [r0, #0x14]
00601eec  18 50 80 e5                                      str r5, [r0, #0x18]
00601ef0  1c 50 80 e5                                      str r5, [r0, #0x1c]
00601ef4  24 50 80 e5                                      str r5, [r0, #0x24]
00601ef8  28 50 c0 e5                                      strb r5, [r0, #0x28]
00601efc  29 60 c0 e5                                      strb r6, [r0, #0x29]
00601f00  02 70 a0 e1                                      mov r7, r2
00601f04  00 20 92 e5                                      ldr r2, [r2]
00601f08  1c d0 4d e2                                      sub sp, sp, #0x1c
00601f0c  00 40 a0 e1                                      mov r4, r0
00601f10  05 00 52 e1                                      cmp r2, r5
00601f14  3e 00 00 0a                                      beq #0x602014
00601f18  10 30 92 e5                                      ldr r3, [r2, #0x10]
00601f1c  06 10 a0 e1                                      mov r1, r6
00601f20  10 30 80 e5                                      str r3, [r0, #0x10]
00601f24  14 30 92 e5                                      ldr r3, [r2, #0x14]
00601f28  14 30 80 e5                                      str r3, [r0, #0x14]
00601f2c  00 30 97 e5                                      ldr r3, [r7]
00601f30  28 30 d3 e5                                      ldrb r3, [r3, #0x28]
00601f34  28 30 c0 e5                                      strb r3, [r0, #0x28]
00601f38  92 fe ff eb                                      bl #0x601988
00601f3c  00 10 97 e5                                      ldr r1, [r7]
00601f40  18 60 94 e5                                      ldr r6, [r4, #0x18]
00601f44  08 70 94 e5                                      ldr r7, [r4, #8]
00601f48  10 e0 94 e5                                      ldr lr, [r4, #0x10]
00601f4c  14 c0 94 e5                                      ldr ip, [r4, #0x14]
00601f50  18 20 91 e5                                      ldr r2, [r1, #0x18]
00601f54  20 00 91 e5                                      ldr r0, [r1, #0x20]
00601f58  20 30 94 e5                                      ldr r3, [r4, #0x20]
00601f5c  08 10 91 e5                                      ldr r1, [r1, #8]
00601f60  00 70 8d e5                                      str r7, [sp]
00601f64  40 40 8d e9                                      stmib sp, {r6, lr}
00601f68  0c c0 8d e5                                      str ip, [sp, #0xc]
00601f6c  10 50 8d e5                                      str r5, [sp, #0x10]
00601f70  8d dd ff eb                                      bl #0x5f95ac
00601f74  05 00 50 e1                                      cmp r0, r5
00601f78  25 00 00 1a                                      bne #0x602014
00601f7c  08 00 94 e5                                      ldr r0, [r4, #8]
00601f80  27 30 a0 e3                                      mov r3, #0x27
00601f84  20 30 84 e5                                      str r3, [r4, #0x20]
00601f88  05 00 50 e1                                      cmp r0, r5
00601f8c  00 00 00 0a                                      beq #0x601f94
00601f90  48 30 f4 eb                                      bl #0x30e0b8
00601f94  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00601f98  00 60 a0 e3                                      mov r6, #0
00601f9c  08 60 84 e5                                      str r6, [r4, #8]
00601fa0  06 00 53 e1                                      cmp r3, r6
00601fa4  15 00 00 0a                                      beq #0x602000
00601fa8  28 20 d4 e5                                      ldrb r2, [r4, #0x28]
00601fac  06 00 52 e1                                      cmp r2, r6
00601fb0  10 00 00 0a                                      beq #0x601ff8
00601fb4  00 00 93 e5                                      ldr r0, [r3]
00601fb8  06 00 50 e1                                      cmp r0, r6
00601fbc  0d 00 00 0a                                      beq #0x601ff8
00601fc0  04 50 a0 e3                                      mov r5, #4
00601fc4  06 70 a0 e1                                      mov r7, r6
00601fc8  3a 30 f4 eb                                      bl #0x30e0b8
00601fcc  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00601fd0  04 20 85 e2                                      add r2, r5, #4
00601fd4  06 70 83 e7                                      str r7, [r3, r6]
00601fd8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00601fdc  05 60 a0 e1                                      mov r6, r5
00601fe0  05 00 93 e7                                      ldr r0, [r3, r5]
00601fe4  02 50 a0 e1                                      mov r5, r2
00601fe8  00 00 50 e3                                      cmp r0, #0
00601fec  f5 ff ff 1a                                      bne #0x601fc8
00601ff0  00 00 53 e3                                      cmp r3, #0
00601ff4  01 00 00 0a                                      beq #0x602000
00601ff8  03 00 a0 e1                                      mov r0, r3
00601ffc  2d 30 f4 eb                                      bl #0x30e0b8
00602000  00 30 a0 e3                                      mov r3, #0
00602004  1c 30 84 e5                                      str r3, [r4, #0x1c]
00602008  29 30 c4 e5                                      strb r3, [r4, #0x29]
0060200c  14 30 84 e5                                      str r3, [r4, #0x14]
00602010  10 30 84 e5                                      str r3, [r4, #0x10]
00602014  04 00 a0 e1                                      mov r0, r4
00602018  1c d0 8d e2                                      add sp, sp, #0x1c
0060201c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
00602020  d4 2b 39 00 10 06 00 00                          .byte 0xd4, 0x2b, 0x39, 0x00, 0x10, 0x06, 0x00, 0x00

; FUNCTION 0x00602028, declared_size=116, range_size=116, mode=arm
; class-group: glitch::video::CImage
; alias: _ZN6glitch5video6CImageC1ENS0_14E_PIXEL_FORMATERKNS_4core11dimension2dIiEEb
; demangled: glitch::video::CImage::CImage(glitch::video::E_PIXEL_FORMAT, glitch::core::dimension2d<int> const&, bool)
; decoder-mode: arm
00602028  70 40 2d e9                                      push {r4, r5, r6, lr}
0060202c  60 e0 9f e5                                      ldr lr, [pc, #0x60]
00602030  60 50 9f e5                                      ldr r5, [pc, #0x60]
00602034  00 c0 a0 e3                                      mov ip, #0
00602038  0e e0 8f e0                                      add lr, pc, lr
0060203c  05 50 9e e7                                      ldr r5, [lr, r5]
00602040  04 c0 80 e5                                      str ip, [r0, #4]
00602044  08 c0 80 e5                                      str ip, [r0, #8]
00602048  08 50 85 e2                                      add r5, r5, #8
0060204c  00 50 80 e5                                      str r5, [r0]
00602050  0c c0 80 e5                                      str ip, [r0, #0xc]
00602054  00 60 92 e5                                      ldr r6, [r2]
00602058  01 50 a0 e3                                      mov r5, #1
0060205c  00 40 a0 e1                                      mov r4, r0
00602060  10 60 80 e5                                      str r6, [r0, #0x10]
00602064  04 20 92 e5                                      ldr r2, [r2, #4]
00602068  20 10 80 e5                                      str r1, [r0, #0x20]
0060206c  24 c0 80 e5                                      str ip, [r0, #0x24]
00602070  14 20 80 e5                                      str r2, [r0, #0x14]
00602074  28 30 c0 e5                                      strb r3, [r0, #0x28]
00602078  18 c0 80 e5                                      str ip, [r0, #0x18]
0060207c  1c c0 80 e5                                      str ip, [r0, #0x1c]
00602080  29 50 c0 e5                                      strb r5, [r0, #0x29]
00602084  05 10 a0 e1                                      mov r1, r5
00602088  3e fe ff eb                                      bl #0x601988
0060208c  04 00 a0 e1                                      mov r0, r4
00602090  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00602094  58 2a 39 00 10 06 00 00                          .byte 0x58, 0x2a, 0x39, 0x00, 0x10, 0x06, 0x00, 0x00

; FUNCTION 0x0060209c, declared_size=116, range_size=116, mode=arm
; class-group: glitch::video::CImage
; alias: _ZN6glitch5video6CImageC2ENS0_14E_PIXEL_FORMATERKNS_4core11dimension2dIiEEb
; demangled: glitch::video::CImage::CImage(glitch::video::E_PIXEL_FORMAT, glitch::core::dimension2d<int> const&, bool)
; decoder-mode: arm
0060209c  70 40 2d e9                                      push {r4, r5, r6, lr}
006020a0  60 e0 9f e5                                      ldr lr, [pc, #0x60]
006020a4  60 50 9f e5                                      ldr r5, [pc, #0x60]
006020a8  00 c0 a0 e3                                      mov ip, #0
006020ac  0e e0 8f e0                                      add lr, pc, lr
006020b0  05 50 9e e7                                      ldr r5, [lr, r5]
006020b4  04 c0 80 e5                                      str ip, [r0, #4]
006020b8  08 c0 80 e5                                      str ip, [r0, #8]
006020bc  08 50 85 e2                                      add r5, r5, #8
006020c0  00 50 80 e5                                      str r5, [r0]
006020c4  0c c0 80 e5                                      str ip, [r0, #0xc]
006020c8  00 60 92 e5                                      ldr r6, [r2]
006020cc  01 50 a0 e3                                      mov r5, #1
006020d0  00 40 a0 e1                                      mov r4, r0
006020d4  10 60 80 e5                                      str r6, [r0, #0x10]
006020d8  04 20 92 e5                                      ldr r2, [r2, #4]
006020dc  20 10 80 e5                                      str r1, [r0, #0x20]
006020e0  24 c0 80 e5                                      str ip, [r0, #0x24]
006020e4  14 20 80 e5                                      str r2, [r0, #0x14]
006020e8  28 30 c0 e5                                      strb r3, [r0, #0x28]
006020ec  18 c0 80 e5                                      str ip, [r0, #0x18]
006020f0  1c c0 80 e5                                      str ip, [r0, #0x1c]
006020f4  29 50 c0 e5                                      strb r5, [r0, #0x29]
006020f8  05 10 a0 e1                                      mov r1, r5
006020fc  21 fe ff eb                                      bl #0x601988
00602100  04 00 a0 e1                                      mov r0, r4
00602104  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00602108  e4 29 39 00 10 06 00 00                          .byte 0xe4, 0x29, 0x39, 0x00, 0x10, 0x06, 0x00, 0x00

; FUNCTION 0x00602110, declared_size=116, range_size=116, mode=arm
; class-group: glitch::video::CImage
; alias: _ZN6glitch5video6CImageC1ENS0_14E_PIXEL_FORMATERKNS_4core11dimension2dIiEE
; demangled: glitch::video::CImage::CImage(glitch::video::E_PIXEL_FORMAT, glitch::core::dimension2d<int> const&)
; decoder-mode: arm
00602110  64 c0 9f e5                                      ldr ip, [pc, #0x64]
00602114  70 40 2d e9                                      push {r4, r5, r6, lr}
00602118  60 e0 9f e5                                      ldr lr, [pc, #0x60]
0060211c  0c c0 8f e0                                      add ip, pc, ip
00602120  00 30 a0 e3                                      mov r3, #0
00602124  0e e0 9c e7                                      ldr lr, [ip, lr]
00602128  04 30 80 e5                                      str r3, [r0, #4]
0060212c  08 30 80 e5                                      str r3, [r0, #8]
00602130  08 e0 8e e2                                      add lr, lr, #8
00602134  00 e0 80 e5                                      str lr, [r0]
00602138  0c 30 80 e5                                      str r3, [r0, #0xc]
0060213c  00 50 92 e5                                      ldr r5, [r2]
00602140  01 e0 a0 e3                                      mov lr, #1
00602144  00 40 a0 e1                                      mov r4, r0
00602148  10 50 80 e5                                      str r5, [r0, #0x10]
0060214c  04 20 92 e5                                      ldr r2, [r2, #4]
00602150  20 10 80 e5                                      str r1, [r0, #0x20]
00602154  28 30 c0 e5                                      strb r3, [r0, #0x28]
00602158  14 20 80 e5                                      str r2, [r0, #0x14]
0060215c  18 30 80 e5                                      str r3, [r0, #0x18]
00602160  1c 30 80 e5                                      str r3, [r0, #0x1c]
00602164  24 30 80 e5                                      str r3, [r0, #0x24]
00602168  29 e0 c0 e5                                      strb lr, [r0, #0x29]
0060216c  0e 10 a0 e1                                      mov r1, lr
00602170  04 fe ff eb                                      bl #0x601988
00602174  04 00 a0 e1                                      mov r0, r4
00602178  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0060217c  74 29 39 00 10 06 00 00                          .byte 0x74, 0x29, 0x39, 0x00, 0x10, 0x06, 0x00, 0x00

; FUNCTION 0x00602184, declared_size=116, range_size=116, mode=arm
; class-group: glitch::video::CImage
; alias: _ZN6glitch5video6CImageC2ENS0_14E_PIXEL_FORMATERKNS_4core11dimension2dIiEE
; demangled: glitch::video::CImage::CImage(glitch::video::E_PIXEL_FORMAT, glitch::core::dimension2d<int> const&)
; decoder-mode: arm
00602184  64 c0 9f e5                                      ldr ip, [pc, #0x64]
00602188  70 40 2d e9                                      push {r4, r5, r6, lr}
0060218c  60 e0 9f e5                                      ldr lr, [pc, #0x60]
00602190  0c c0 8f e0                                      add ip, pc, ip
00602194  00 30 a0 e3                                      mov r3, #0
00602198  0e e0 9c e7                                      ldr lr, [ip, lr]
0060219c  04 30 80 e5                                      str r3, [r0, #4]
006021a0  08 30 80 e5                                      str r3, [r0, #8]
006021a4  08 e0 8e e2                                      add lr, lr, #8
006021a8  00 e0 80 e5                                      str lr, [r0]
006021ac  0c 30 80 e5                                      str r3, [r0, #0xc]
006021b0  00 50 92 e5                                      ldr r5, [r2]
006021b4  01 e0 a0 e3                                      mov lr, #1
006021b8  00 40 a0 e1                                      mov r4, r0
006021bc  10 50 80 e5                                      str r5, [r0, #0x10]
006021c0  04 20 92 e5                                      ldr r2, [r2, #4]
006021c4  20 10 80 e5                                      str r1, [r0, #0x20]
006021c8  28 30 c0 e5                                      strb r3, [r0, #0x28]
006021cc  14 20 80 e5                                      str r2, [r0, #0x14]
006021d0  18 30 80 e5                                      str r3, [r0, #0x18]
006021d4  1c 30 80 e5                                      str r3, [r0, #0x1c]
006021d8  24 30 80 e5                                      str r3, [r0, #0x24]
006021dc  29 e0 c0 e5                                      strb lr, [r0, #0x29]
006021e0  0e 10 a0 e1                                      mov r1, lr
006021e4  e7 fd ff eb                                      bl #0x601988
006021e8  04 00 a0 e1                                      mov r0, r4
006021ec  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006021f0  00 29 39 00 10 06 00 00                          .byte 0x00, 0x29, 0x39, 0x00, 0x10, 0x06, 0x00, 0x00

; FUNCTION 0x006021f8, declared_size=572, range_size=572, mode=arm
; class-group: glitch::video::CImage
; alias: _ZN6glitch5video6CImageC1ENS0_14E_PIXEL_FORMATERKNS_4core11dimension2dIiEEPvPS8_bb
; demangled: glitch::video::CImage::CImage(glitch::video::E_PIXEL_FORMAT, glitch::core::dimension2d<int> const&, void*, void**, bool, bool)
; decoder-mode: arm
006021f8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006021fc  24 92 9f e5                                      ldr sb, [pc, #0x224]
00602200  24 c2 9f e5                                      ldr ip, [pc, #0x224]
00602204  00 50 a0 e3                                      mov r5, #0
00602208  09 90 8f e0                                      add sb, pc, sb
0060220c  0c c0 99 e7                                      ldr ip, [sb, ip]
00602210  04 50 80 e5                                      str r5, [r0, #4]
00602214  08 50 80 e5                                      str r5, [r0, #8]
00602218  08 c0 8c e2                                      add ip, ip, #8
0060221c  00 c0 80 e5                                      str ip, [r0]
00602220  0c 50 80 e5                                      str r5, [r0, #0xc]
00602224  00 e0 92 e5                                      ldr lr, [r2]
00602228  0c d0 4d e2                                      sub sp, sp, #0xc
0060222c  34 60 dd e5                                      ldrb r6, [sp, #0x34]
00602230  38 c0 dd e5                                      ldrb ip, [sp, #0x38]
00602234  10 e0 80 e5                                      str lr, [r0, #0x10]
00602238  04 20 92 e5                                      ldr r2, [r2, #4]
0060223c  00 40 a0 e1                                      mov r4, r0
00602240  29 c0 c0 e5                                      strb ip, [r0, #0x29]
00602244  14 20 80 e5                                      str r2, [r0, #0x14]
00602248  18 50 80 e5                                      str r5, [r0, #0x18]
0060224c  1c 50 80 e5                                      str r5, [r0, #0x1c]
00602250  05 00 56 e1                                      cmp r6, r5
00602254  20 10 84 e5                                      str r1, [r4, #0x20]
00602258  24 50 80 e5                                      str r5, [r0, #0x24]
0060225c  28 50 c0 e5                                      strb r5, [r0, #0x28]
00602260  01 70 a0 e1                                      mov r7, r1
00602264  03 80 a0 e1                                      mov r8, r3
00602268  30 a0 9d e5                                      ldr sl, [sp, #0x30]
0060226c  4a 00 00 1a                                      bne #0x60239c
00602270  00 00 5a e3                                      cmp sl, #0
00602274  62 00 00 0a                                      beq #0x602404
00602278  01 30 a0 e3                                      mov r3, #1
0060227c  03 10 a0 e1                                      mov r1, r3
00602280  28 30 c0 e5                                      strb r3, [r0, #0x28]
00602284  bf fd ff eb                                      bl #0x601988
00602288  14 30 94 e5                                      ldr r3, [r4, #0x14]
0060228c  18 20 94 e5                                      ldr r2, [r4, #0x18]
00602290  08 10 a0 e1                                      mov r1, r8
00602294  08 00 94 e5                                      ldr r0, [r4, #8]
00602298  92 03 02 e0                                      mul r2, r2, r3
0060229c  71 31 f4 eb                                      bl #0x30e868
006022a0  88 31 9f e5                                      ldr r3, [pc, #0x188]
006022a4  28 b0 a0 e3                                      mov fp, #0x28
006022a8  06 50 a0 e1                                      mov r5, r6
006022ac  24 60 84 e5                                      str r6, [r4, #0x24]
006022b0  9b 07 0b e0                                      mul fp, fp, r7
006022b4  10 60 94 e5                                      ldr r6, [r4, #0x10]
006022b8  14 70 94 e5                                      ldr r7, [r4, #0x14]
006022bc  04 30 8d e5                                      str r3, [sp, #4]
006022c0  05 10 9a e7                                      ldr r1, [sl, r5]
006022c4  05 80 a0 e1                                      mov r8, r5
006022c8  00 00 51 e3                                      cmp r1, #0
006022cc  01 00 56 03                                      cmpeq r6, #1
006022d0  00 30 a0 03                                      moveq r3, #0
006022d4  01 30 a0 13                                      movne r3, #1
006022d8  15 00 00 0a                                      beq #0x602334
006022dc  01 00 56 e3                                      cmp r6, #1
006022e0  a6 60 a0 81                                      lsrhi r6, r6, #1
006022e4  04 30 9d e5                                      ldr r3, [sp, #4]
006022e8  01 00 57 e3                                      cmp r7, #1
006022ec  a7 70 a0 81                                      lsrhi r7, r7, #1
006022f0  03 20 99 e7                                      ldr r2, [sb, r3]
006022f4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006022f8  01 80 88 e2                                      add r8, r8, #1
006022fc  0b 20 82 e0                                      add r2, r2, fp
00602300  16 20 d2 e5                                      ldrb r2, [r2, #0x16]
00602304  05 00 93 e7                                      ldr r0, [r3, r5]
00602308  04 50 85 e2                                      add r5, r5, #4
0060230c  92 06 02 e0                                      mul r2, r2, r6
00602310  97 02 02 e0                                      mul r2, r7, r2
00602314  a2 21 a0 e1                                      lsr r2, r2, #3
00602318  52 31 f4 eb                                      bl #0x30e868
0060231c  05 10 9a e7                                      ldr r1, [sl, r5]
00602320  00 00 51 e3                                      cmp r1, #0
00602324  01 00 56 03                                      cmpeq r6, #1
00602328  00 30 a0 03                                      moveq r3, #0
0060232c  01 30 a0 13                                      movne r3, #1
00602330  e9 ff ff 1a                                      bne #0x6022dc
00602334  01 00 57 e3                                      cmp r7, #1
00602338  e9 ff ff 1a                                      bne #0x6022e4
0060233c  24 20 94 e5                                      ldr r2, [r4, #0x24]
00602340  24 80 84 e5                                      str r8, [r4, #0x24]
00602344  08 00 52 e1                                      cmp r2, r8
00602348  10 00 00 9a                                      bls #0x602390
0060234c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00602350  03 60 a0 e1                                      mov r6, r3
00602354  05 00 92 e7                                      ldr r0, [r2, r5]
00602358  00 30 8d e5                                      str r3, [sp]
0060235c  d3 2f f4 eb                                      bl #0x30e2b0
00602360  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00602364  00 30 9d e5                                      ldr r3, [sp]
00602368  05 30 82 e7                                      str r3, [r2, r5]
0060236c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00602370  05 00 93 e7                                      ldr r0, [r3, r5]
00602374  cd 2f f4 eb                                      bl #0x30e2b0
00602378  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0060237c  05 60 83 e7                                      str r6, [r3, r5]
00602380  f9 ff ff ea                                      b #0x60236c
00602384  01 00 53 e3                                      cmp r3, #1
00602388  16 00 00 1a                                      bne #0x6023e8
0060238c  28 30 c4 e5                                      strb r3, [r4, #0x28]
00602390  04 00 a0 e1                                      mov r0, r4
00602394  0c d0 8d e2                                      add sp, sp, #0xc
00602398  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0060239c  0d 30 0f e3                                      movw r3, #0xf00d
006023a0  ad 3b 40 e3                                      movt r3, #0xbad
006023a4  0c 30 80 e5                                      str r3, [r0, #0xc]
006023a8  08 30 80 e5                                      str r3, [r0, #8]
006023ac  01 10 a0 e3                                      mov r1, #1
006023b0  74 fd ff eb                                      bl #0x601988
006023b4  05 00 5a e1                                      cmp sl, r5
006023b8  08 80 84 e5                                      str r8, [r4, #8]
006023bc  0c a0 84 e5                                      str sl, [r4, #0xc]
006023c0  24 50 84 e5                                      str r5, [r4, #0x24]
006023c4  f1 ff ff 0a                                      beq #0x602390
006023c8  10 20 94 e5                                      ldr r2, [r4, #0x10]
006023cc  14 30 94 e5                                      ldr r3, [r4, #0x14]
006023d0  05 10 9a e7                                      ldr r1, [sl, r5]
006023d4  00 00 51 e3                                      cmp r1, #0
006023d8  01 00 52 03                                      cmpeq r2, #1
006023dc  e8 ff ff 0a                                      beq #0x602384
006023e0  01 00 52 e3                                      cmp r2, #1
006023e4  a2 20 a0 81                                      lsrhi r2, r2, #1
006023e8  24 10 94 e5                                      ldr r1, [r4, #0x24]
006023ec  01 00 53 e3                                      cmp r3, #1
006023f0  a3 30 a0 81                                      lsrhi r3, r3, #1
006023f4  01 10 81 e2                                      add r1, r1, #1
006023f8  04 50 85 e2                                      add r5, r5, #4
006023fc  24 10 84 e5                                      str r1, [r4, #0x24]
00602400  f2 ff ff ea                                      b #0x6023d0
00602404  01 10 a0 e3                                      mov r1, #1
00602408  5e fd ff eb                                      bl #0x601988
0060240c  14 30 94 e5                                      ldr r3, [r4, #0x14]
00602410  18 20 94 e5                                      ldr r2, [r4, #0x18]
00602414  08 10 a0 e1                                      mov r1, r8
00602418  08 00 94 e5                                      ldr r0, [r4, #8]
0060241c  92 03 02 e0                                      mul r2, r2, r3
00602420  10 31 f4 eb                                      bl #0x30e868
00602424  d9 ff ff ea                                      b #0x602390
; mapping-symbol data/literal pool
00602428  88 28 39 00 10 06 00 00 34 1f 00 00              .byte 0x88, 0x28, 0x39, 0x00, 0x10, 0x06, 0x00, 0x00, 0x34, 0x1f, 0x00, 0x00

; FUNCTION 0x00602434, declared_size=572, range_size=572, mode=arm
; class-group: glitch::video::CImage
; alias: _ZN6glitch5video6CImageC2ENS0_14E_PIXEL_FORMATERKNS_4core11dimension2dIiEEPvPS8_bb
; demangled: glitch::video::CImage::CImage(glitch::video::E_PIXEL_FORMAT, glitch::core::dimension2d<int> const&, void*, void**, bool, bool)
; decoder-mode: arm
00602434  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00602438  24 92 9f e5                                      ldr sb, [pc, #0x224]
0060243c  24 c2 9f e5                                      ldr ip, [pc, #0x224]
00602440  00 50 a0 e3                                      mov r5, #0
00602444  09 90 8f e0                                      add sb, pc, sb
00602448  0c c0 99 e7                                      ldr ip, [sb, ip]
0060244c  04 50 80 e5                                      str r5, [r0, #4]
00602450  08 50 80 e5                                      str r5, [r0, #8]
00602454  08 c0 8c e2                                      add ip, ip, #8
00602458  00 c0 80 e5                                      str ip, [r0]
0060245c  0c 50 80 e5                                      str r5, [r0, #0xc]
00602460  00 e0 92 e5                                      ldr lr, [r2]
00602464  0c d0 4d e2                                      sub sp, sp, #0xc
00602468  34 60 dd e5                                      ldrb r6, [sp, #0x34]
0060246c  38 c0 dd e5                                      ldrb ip, [sp, #0x38]
00602470  10 e0 80 e5                                      str lr, [r0, #0x10]
00602474  04 20 92 e5                                      ldr r2, [r2, #4]
00602478  00 40 a0 e1                                      mov r4, r0
0060247c  29 c0 c0 e5                                      strb ip, [r0, #0x29]
00602480  14 20 80 e5                                      str r2, [r0, #0x14]
00602484  18 50 80 e5                                      str r5, [r0, #0x18]
00602488  1c 50 80 e5                                      str r5, [r0, #0x1c]
0060248c  05 00 56 e1                                      cmp r6, r5
00602490  20 10 84 e5                                      str r1, [r4, #0x20]
00602494  24 50 80 e5                                      str r5, [r0, #0x24]
00602498  28 50 c0 e5                                      strb r5, [r0, #0x28]
0060249c  01 70 a0 e1                                      mov r7, r1
006024a0  03 80 a0 e1                                      mov r8, r3
006024a4  30 a0 9d e5                                      ldr sl, [sp, #0x30]
006024a8  4a 00 00 1a                                      bne #0x6025d8
006024ac  00 00 5a e3                                      cmp sl, #0
006024b0  62 00 00 0a                                      beq #0x602640
006024b4  01 30 a0 e3                                      mov r3, #1
006024b8  03 10 a0 e1                                      mov r1, r3
006024bc  28 30 c0 e5                                      strb r3, [r0, #0x28]
006024c0  30 fd ff eb                                      bl #0x601988
006024c4  14 30 94 e5                                      ldr r3, [r4, #0x14]
006024c8  18 20 94 e5                                      ldr r2, [r4, #0x18]
006024cc  08 10 a0 e1                                      mov r1, r8
006024d0  08 00 94 e5                                      ldr r0, [r4, #8]
006024d4  92 03 02 e0                                      mul r2, r2, r3
006024d8  e2 30 f4 eb                                      bl #0x30e868
006024dc  88 31 9f e5                                      ldr r3, [pc, #0x188]
006024e0  28 b0 a0 e3                                      mov fp, #0x28
006024e4  06 50 a0 e1                                      mov r5, r6
006024e8  24 60 84 e5                                      str r6, [r4, #0x24]
006024ec  9b 07 0b e0                                      mul fp, fp, r7
006024f0  10 60 94 e5                                      ldr r6, [r4, #0x10]
006024f4  14 70 94 e5                                      ldr r7, [r4, #0x14]
006024f8  04 30 8d e5                                      str r3, [sp, #4]
006024fc  05 10 9a e7                                      ldr r1, [sl, r5]
00602500  05 80 a0 e1                                      mov r8, r5
00602504  00 00 51 e3                                      cmp r1, #0
00602508  01 00 56 03                                      cmpeq r6, #1
0060250c  00 30 a0 03                                      moveq r3, #0
00602510  01 30 a0 13                                      movne r3, #1
00602514  15 00 00 0a                                      beq #0x602570
00602518  01 00 56 e3                                      cmp r6, #1
0060251c  a6 60 a0 81                                      lsrhi r6, r6, #1
00602520  04 30 9d e5                                      ldr r3, [sp, #4]
00602524  01 00 57 e3                                      cmp r7, #1
00602528  a7 70 a0 81                                      lsrhi r7, r7, #1
0060252c  03 20 99 e7                                      ldr r2, [sb, r3]
00602530  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00602534  01 80 88 e2                                      add r8, r8, #1
00602538  0b 20 82 e0                                      add r2, r2, fp
0060253c  16 20 d2 e5                                      ldrb r2, [r2, #0x16]
00602540  05 00 93 e7                                      ldr r0, [r3, r5]
00602544  04 50 85 e2                                      add r5, r5, #4
00602548  92 06 02 e0                                      mul r2, r2, r6
0060254c  97 02 02 e0                                      mul r2, r7, r2
00602550  a2 21 a0 e1                                      lsr r2, r2, #3
00602554  c3 30 f4 eb                                      bl #0x30e868
00602558  05 10 9a e7                                      ldr r1, [sl, r5]
0060255c  00 00 51 e3                                      cmp r1, #0
00602560  01 00 56 03                                      cmpeq r6, #1
00602564  00 30 a0 03                                      moveq r3, #0
00602568  01 30 a0 13                                      movne r3, #1
0060256c  e9 ff ff 1a                                      bne #0x602518
00602570  01 00 57 e3                                      cmp r7, #1
00602574  e9 ff ff 1a                                      bne #0x602520
00602578  24 20 94 e5                                      ldr r2, [r4, #0x24]
0060257c  24 80 84 e5                                      str r8, [r4, #0x24]
00602580  08 00 52 e1                                      cmp r2, r8
00602584  10 00 00 9a                                      bls #0x6025cc
00602588  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0060258c  03 60 a0 e1                                      mov r6, r3
00602590  05 00 92 e7                                      ldr r0, [r2, r5]
00602594  00 30 8d e5                                      str r3, [sp]
00602598  44 2f f4 eb                                      bl #0x30e2b0
0060259c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
006025a0  00 30 9d e5                                      ldr r3, [sp]
006025a4  05 30 82 e7                                      str r3, [r2, r5]
006025a8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006025ac  05 00 93 e7                                      ldr r0, [r3, r5]
006025b0  3e 2f f4 eb                                      bl #0x30e2b0
006025b4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006025b8  05 60 83 e7                                      str r6, [r3, r5]
006025bc  f9 ff ff ea                                      b #0x6025a8
006025c0  01 00 53 e3                                      cmp r3, #1
006025c4  16 00 00 1a                                      bne #0x602624
006025c8  28 30 c4 e5                                      strb r3, [r4, #0x28]
006025cc  04 00 a0 e1                                      mov r0, r4
006025d0  0c d0 8d e2                                      add sp, sp, #0xc
006025d4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006025d8  0d 30 0f e3                                      movw r3, #0xf00d
006025dc  ad 3b 40 e3                                      movt r3, #0xbad
006025e0  0c 30 80 e5                                      str r3, [r0, #0xc]
006025e4  08 30 80 e5                                      str r3, [r0, #8]
006025e8  01 10 a0 e3                                      mov r1, #1
006025ec  e5 fc ff eb                                      bl #0x601988
006025f0  05 00 5a e1                                      cmp sl, r5
006025f4  08 80 84 e5                                      str r8, [r4, #8]
006025f8  0c a0 84 e5                                      str sl, [r4, #0xc]
006025fc  24 50 84 e5                                      str r5, [r4, #0x24]
00602600  f1 ff ff 0a                                      beq #0x6025cc
00602604  10 20 94 e5                                      ldr r2, [r4, #0x10]
00602608  14 30 94 e5                                      ldr r3, [r4, #0x14]
0060260c  05 10 9a e7                                      ldr r1, [sl, r5]
00602610  00 00 51 e3                                      cmp r1, #0
00602614  01 00 52 03                                      cmpeq r2, #1
00602618  e8 ff ff 0a                                      beq #0x6025c0
0060261c  01 00 52 e3                                      cmp r2, #1
00602620  a2 20 a0 81                                      lsrhi r2, r2, #1
00602624  24 10 94 e5                                      ldr r1, [r4, #0x24]
00602628  01 00 53 e3                                      cmp r3, #1
0060262c  a3 30 a0 81                                      lsrhi r3, r3, #1
00602630  01 10 81 e2                                      add r1, r1, #1
00602634  04 50 85 e2                                      add r5, r5, #4
00602638  24 10 84 e5                                      str r1, [r4, #0x24]
0060263c  f2 ff ff ea                                      b #0x60260c
00602640  01 10 a0 e3                                      mov r1, #1
00602644  cf fc ff eb                                      bl #0x601988
00602648  14 30 94 e5                                      ldr r3, [r4, #0x14]
0060264c  18 20 94 e5                                      ldr r2, [r4, #0x18]
00602650  08 10 a0 e1                                      mov r1, r8
00602654  08 00 94 e5                                      ldr r0, [r4, #8]
00602658  92 03 02 e0                                      mul r2, r2, r3
0060265c  81 30 f4 eb                                      bl #0x30e868
00602660  d9 ff ff ea                                      b #0x6025cc
; mapping-symbol data/literal pool
00602664  4c 26 39 00 10 06 00 00 34 1f 00 00              .byte 0x4c, 0x26, 0x39, 0x00, 0x10, 0x06, 0x00, 0x00, 0x34, 0x1f, 0x00, 0x00

; FUNCTION 0x00602670, declared_size=188, range_size=188, mode=arm
; class-group: glitch::video::CImage
; alias: _ZN6glitch5video6CImageC1ENS0_14E_PIXEL_FORMATERKNS_4core11dimension2dIiEEPvbb
; demangled: glitch::video::CImage::CImage(glitch::video::E_PIXEL_FORMAT, glitch::core::dimension2d<int> const&, void*, bool, bool)
; decoder-mode: arm
00602670  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00602674  a8 e0 9f e5                                      ldr lr, [pc, #0xa8]
00602678  a8 50 9f e5                                      ldr r5, [pc, #0xa8]
0060267c  00 c0 a0 e3                                      mov ip, #0
00602680  0e e0 8f e0                                      add lr, pc, lr
00602684  05 50 9e e7                                      ldr r5, [lr, r5]
00602688  04 c0 80 e5                                      str ip, [r0, #4]
0060268c  08 c0 80 e5                                      str ip, [r0, #8]
00602690  08 50 85 e2                                      add r5, r5, #8
00602694  00 50 80 e5                                      str r5, [r0]
00602698  0c c0 80 e5                                      str ip, [r0, #0xc]
0060269c  00 70 92 e5                                      ldr r7, [r2]
006026a0  18 60 dd e5                                      ldrb r6, [sp, #0x18]
006026a4  1c 50 dd e5                                      ldrb r5, [sp, #0x1c]
006026a8  10 70 80 e5                                      str r7, [r0, #0x10]
006026ac  04 20 92 e5                                      ldr r2, [r2, #4]
006026b0  0c 00 56 e1                                      cmp r6, ip
006026b4  29 50 c0 e5                                      strb r5, [r0, #0x29]
006026b8  00 40 a0 e1                                      mov r4, r0
006026bc  20 10 80 e5                                      str r1, [r0, #0x20]
006026c0  14 20 80 e5                                      str r2, [r0, #0x14]
006026c4  28 c0 c0 e5                                      strb ip, [r0, #0x28]
006026c8  03 50 a0 e1                                      mov r5, r3
006026cc  18 c0 80 e5                                      str ip, [r0, #0x18]
006026d0  1c c0 80 e5                                      str ip, [r0, #0x1c]
006026d4  24 c0 80 e5                                      str ip, [r0, #0x24]
006026d8  09 00 00 1a                                      bne #0x602704
006026dc  01 10 a0 e3                                      mov r1, #1
006026e0  a8 fc ff eb                                      bl #0x601988
006026e4  14 30 94 e5                                      ldr r3, [r4, #0x14]
006026e8  18 20 94 e5                                      ldr r2, [r4, #0x18]
006026ec  05 10 a0 e1                                      mov r1, r5
006026f0  08 00 94 e5                                      ldr r0, [r4, #8]
006026f4  92 03 02 e0                                      mul r2, r2, r3
006026f8  5a 30 f4 eb                                      bl #0x30e868
006026fc  04 00 a0 e1                                      mov r0, r4
00602700  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00602704  0d 30 0f e3                                      movw r3, #0xf00d
00602708  ad 3b 40 e3                                      movt r3, #0xbad
0060270c  08 30 80 e5                                      str r3, [r0, #8]
00602710  01 10 a0 e3                                      mov r1, #1
00602714  9b fc ff eb                                      bl #0x601988
00602718  08 50 84 e5                                      str r5, [r4, #8]
0060271c  04 00 a0 e1                                      mov r0, r4
00602720  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00602724  10 24 39 00 10 06 00 00                          .byte 0x10, 0x24, 0x39, 0x00, 0x10, 0x06, 0x00, 0x00

; FUNCTION 0x0060272c, declared_size=188, range_size=188, mode=arm
; class-group: glitch::video::CImage
; alias: _ZN6glitch5video6CImageC2ENS0_14E_PIXEL_FORMATERKNS_4core11dimension2dIiEEPvbb
; demangled: glitch::video::CImage::CImage(glitch::video::E_PIXEL_FORMAT, glitch::core::dimension2d<int> const&, void*, bool, bool)
; decoder-mode: arm
0060272c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00602730  a8 e0 9f e5                                      ldr lr, [pc, #0xa8]
00602734  a8 50 9f e5                                      ldr r5, [pc, #0xa8]
00602738  00 c0 a0 e3                                      mov ip, #0
0060273c  0e e0 8f e0                                      add lr, pc, lr
00602740  05 50 9e e7                                      ldr r5, [lr, r5]
00602744  04 c0 80 e5                                      str ip, [r0, #4]
00602748  08 c0 80 e5                                      str ip, [r0, #8]
0060274c  08 50 85 e2                                      add r5, r5, #8
00602750  00 50 80 e5                                      str r5, [r0]
00602754  0c c0 80 e5                                      str ip, [r0, #0xc]
00602758  00 70 92 e5                                      ldr r7, [r2]
0060275c  18 60 dd e5                                      ldrb r6, [sp, #0x18]
00602760  1c 50 dd e5                                      ldrb r5, [sp, #0x1c]
00602764  10 70 80 e5                                      str r7, [r0, #0x10]
00602768  04 20 92 e5                                      ldr r2, [r2, #4]
0060276c  0c 00 56 e1                                      cmp r6, ip
00602770  29 50 c0 e5                                      strb r5, [r0, #0x29]
00602774  00 40 a0 e1                                      mov r4, r0
00602778  20 10 80 e5                                      str r1, [r0, #0x20]
0060277c  14 20 80 e5                                      str r2, [r0, #0x14]
00602780  28 c0 c0 e5                                      strb ip, [r0, #0x28]
00602784  03 50 a0 e1                                      mov r5, r3
00602788  18 c0 80 e5                                      str ip, [r0, #0x18]
0060278c  1c c0 80 e5                                      str ip, [r0, #0x1c]
00602790  24 c0 80 e5                                      str ip, [r0, #0x24]
00602794  09 00 00 1a                                      bne #0x6027c0
00602798  01 10 a0 e3                                      mov r1, #1
0060279c  79 fc ff eb                                      bl #0x601988
006027a0  14 30 94 e5                                      ldr r3, [r4, #0x14]
006027a4  18 20 94 e5                                      ldr r2, [r4, #0x18]
006027a8  05 10 a0 e1                                      mov r1, r5
006027ac  08 00 94 e5                                      ldr r0, [r4, #8]
006027b0  92 03 02 e0                                      mul r2, r2, r3
006027b4  2b 30 f4 eb                                      bl #0x30e868
006027b8  04 00 a0 e1                                      mov r0, r4
006027bc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006027c0  0d 30 0f e3                                      movw r3, #0xf00d
006027c4  ad 3b 40 e3                                      movt r3, #0xbad
006027c8  08 30 80 e5                                      str r3, [r0, #8]
006027cc  01 10 a0 e3                                      mov r1, #1
006027d0  6c fc ff eb                                      bl #0x601988
006027d4  08 50 84 e5                                      str r5, [r4, #8]
006027d8  04 00 a0 e1                                      mov r0, r4
006027dc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
006027e0  54 23 39 00 10 06 00 00                          .byte 0x54, 0x23, 0x39, 0x00, 0x10, 0x06, 0x00, 0x00

; FUNCTION 0x006027e8, declared_size=336, range_size=336, mode=arm
; class-group: glitch::video::CImage
; alias: _ZN6glitch5video6CImageC1ENS0_14E_PIXEL_FORMATERKNS_4core11dimension2dIiEEPvjjbb
; demangled: glitch::video::CImage::CImage(glitch::video::E_PIXEL_FORMAT, glitch::core::dimension2d<int> const&, void*, unsigned int, unsigned int, bool, bool)
; decoder-mode: arm
006027e8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006027ec  3c e1 9f e5                                      ldr lr, [pc, #0x13c]
006027f0  3c 51 9f e5                                      ldr r5, [pc, #0x13c]
006027f4  00 c0 a0 e3                                      mov ip, #0
006027f8  0e e0 8f e0                                      add lr, pc, lr
006027fc  05 50 9e e7                                      ldr r5, [lr, r5]
00602800  04 c0 80 e5                                      str ip, [r0, #4]
00602804  08 c0 80 e5                                      str ip, [r0, #8]
00602808  08 50 85 e2                                      add r5, r5, #8
0060280c  00 50 80 e5                                      str r5, [r0]
00602810  0c c0 80 e5                                      str ip, [r0, #0xc]
00602814  00 70 92 e5                                      ldr r7, [r2]
00602818  08 d0 4d e2                                      sub sp, sp, #8
0060281c  30 60 dd e5                                      ldrb r6, [sp, #0x30]
00602820  28 50 9d e5                                      ldr r5, [sp, #0x28]
00602824  10 70 80 e5                                      str r7, [r0, #0x10]
00602828  04 80 92 e5                                      ldr r8, [r2, #4]
0060282c  34 20 dd e5                                      ldrb r2, [sp, #0x34]
00602830  01 70 a0 e1                                      mov r7, r1
00602834  14 80 80 e5                                      str r8, [r0, #0x14]
00602838  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0060283c  0c 00 56 e1                                      cmp r6, ip
00602840  00 40 a0 e1                                      mov r4, r0
00602844  24 10 80 e5                                      str r1, [r0, #0x24]
00602848  29 20 c0 e5                                      strb r2, [r0, #0x29]
0060284c  03 80 a0 e1                                      mov r8, r3
00602850  1c 50 80 e5                                      str r5, [r0, #0x1c]
00602854  20 70 80 e5                                      str r7, [r0, #0x20]
00602858  28 c0 c0 e5                                      strb ip, [r0, #0x28]
0060285c  0b 00 00 0a                                      beq #0x602890
00602860  0d 30 0f e3                                      movw r3, #0xf00d
00602864  ad 3b 40 e3                                      movt r3, #0xbad
00602868  08 30 80 e5                                      str r3, [r0, #8]
0060286c  0c 10 a0 e1                                      mov r1, ip
00602870  44 fc ff eb                                      bl #0x601988
00602874  24 30 94 e5                                      ldr r3, [r4, #0x24]
00602878  08 80 84 e5                                      str r8, [r4, #8]
0060287c  00 00 53 e3                                      cmp r3, #0
00602880  0b 00 00 1a                                      bne #0x6028b4
00602884  04 00 a0 e1                                      mov r0, r4
00602888  08 d0 8d e2                                      add sp, sp, #8
0060288c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00602890  06 10 a0 e1                                      mov r1, r6
00602894  3b fc ff eb                                      bl #0x601988
00602898  08 10 a0 e1                                      mov r1, r8
0060289c  05 20 a0 e1                                      mov r2, r5
006028a0  08 00 94 e5                                      ldr r0, [r4, #8]
006028a4  ef 2f f4 eb                                      bl #0x30e868
006028a8  24 30 94 e5                                      ldr r3, [r4, #0x24]
006028ac  00 00 53 e3                                      cmp r3, #0
006028b0  f3 ff ff 0a                                      beq #0x602884
006028b4  01 30 83 e2                                      add r3, r3, #1
006028b8  03 01 a0 e1                                      lsl r0, r3, #2
006028bc  00 10 a0 e3                                      mov r1, #0
006028c0  38 c6 fc eb                                      bl #0x5341a8
006028c4  24 50 94 e5                                      ldr r5, [r4, #0x24]
006028c8  0c 00 84 e5                                      str r0, [r4, #0xc]
006028cc  08 60 94 e5                                      ldr r6, [r4, #8]
006028d0  00 00 55 e3                                      cmp r5, #0
006028d4  10 80 94 e5                                      ldr r8, [r4, #0x10]
006028d8  14 a0 94 e5                                      ldr sl, [r4, #0x14]
006028dc  10 00 00 0a                                      beq #0x602924
006028e0  00 50 a0 e3                                      mov r5, #0
006028e4  05 90 a0 e1                                      mov sb, r5
006028e8  75 30 ef e6                                      uxtb r3, r5
006028ec  07 00 a0 e1                                      mov r0, r7
006028f0  08 10 a0 e1                                      mov r1, r8
006028f4  0a 20 a0 e1                                      mov r2, sl
006028f8  00 90 8d e5                                      str sb, [sp]
006028fc  b2 ac ff eb                                      bl #0x5edbcc
00602900  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00602904  00 60 86 e0                                      add r6, r6, r0
00602908  05 61 83 e7                                      str r6, [r3, r5, lsl #2]
0060290c  24 30 94 e5                                      ldr r3, [r4, #0x24]
00602910  01 50 85 e2                                      add r5, r5, #1
00602914  05 00 53 e1                                      cmp r3, r5
00602918  f2 ff ff 8a                                      bhi #0x6028e8
0060291c  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00602920  05 51 a0 e1                                      lsl r5, r5, #2
00602924  00 30 a0 e3                                      mov r3, #0
00602928  05 30 80 e7                                      str r3, [r0, r5]
0060292c  d4 ff ff ea                                      b #0x602884
; mapping-symbol data/literal pool
00602930  98 22 39 00 10 06 00 00                          .byte 0x98, 0x22, 0x39, 0x00, 0x10, 0x06, 0x00, 0x00

; FUNCTION 0x00602938, declared_size=336, range_size=336, mode=arm
; class-group: glitch::video::CImage
; alias: _ZN6glitch5video6CImageC2ENS0_14E_PIXEL_FORMATERKNS_4core11dimension2dIiEEPvjjbb
; demangled: glitch::video::CImage::CImage(glitch::video::E_PIXEL_FORMAT, glitch::core::dimension2d<int> const&, void*, unsigned int, unsigned int, bool, bool)
; decoder-mode: arm
00602938  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0060293c  3c e1 9f e5                                      ldr lr, [pc, #0x13c]
00602940  3c 51 9f e5                                      ldr r5, [pc, #0x13c]
00602944  00 c0 a0 e3                                      mov ip, #0
00602948  0e e0 8f e0                                      add lr, pc, lr
0060294c  05 50 9e e7                                      ldr r5, [lr, r5]
00602950  04 c0 80 e5                                      str ip, [r0, #4]
00602954  08 c0 80 e5                                      str ip, [r0, #8]
00602958  08 50 85 e2                                      add r5, r5, #8
0060295c  00 50 80 e5                                      str r5, [r0]
00602960  0c c0 80 e5                                      str ip, [r0, #0xc]
00602964  00 70 92 e5                                      ldr r7, [r2]
00602968  08 d0 4d e2                                      sub sp, sp, #8
0060296c  30 60 dd e5                                      ldrb r6, [sp, #0x30]
00602970  28 50 9d e5                                      ldr r5, [sp, #0x28]
00602974  10 70 80 e5                                      str r7, [r0, #0x10]
00602978  04 80 92 e5                                      ldr r8, [r2, #4]
0060297c  34 20 dd e5                                      ldrb r2, [sp, #0x34]
00602980  01 70 a0 e1                                      mov r7, r1
00602984  14 80 80 e5                                      str r8, [r0, #0x14]
00602988  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0060298c  0c 00 56 e1                                      cmp r6, ip
00602990  00 40 a0 e1                                      mov r4, r0
00602994  24 10 80 e5                                      str r1, [r0, #0x24]
00602998  29 20 c0 e5                                      strb r2, [r0, #0x29]
0060299c  03 80 a0 e1                                      mov r8, r3
006029a0  1c 50 80 e5                                      str r5, [r0, #0x1c]
006029a4  20 70 80 e5                                      str r7, [r0, #0x20]
006029a8  28 c0 c0 e5                                      strb ip, [r0, #0x28]
006029ac  0b 00 00 0a                                      beq #0x6029e0
006029b0  0d 30 0f e3                                      movw r3, #0xf00d
006029b4  ad 3b 40 e3                                      movt r3, #0xbad
006029b8  08 30 80 e5                                      str r3, [r0, #8]
006029bc  0c 10 a0 e1                                      mov r1, ip
006029c0  f0 fb ff eb                                      bl #0x601988
006029c4  24 30 94 e5                                      ldr r3, [r4, #0x24]
006029c8  08 80 84 e5                                      str r8, [r4, #8]
006029cc  00 00 53 e3                                      cmp r3, #0
006029d0  0b 00 00 1a                                      bne #0x602a04
006029d4  04 00 a0 e1                                      mov r0, r4
006029d8  08 d0 8d e2                                      add sp, sp, #8
006029dc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006029e0  06 10 a0 e1                                      mov r1, r6
006029e4  e7 fb ff eb                                      bl #0x601988
006029e8  08 10 a0 e1                                      mov r1, r8
006029ec  05 20 a0 e1                                      mov r2, r5
006029f0  08 00 94 e5                                      ldr r0, [r4, #8]
006029f4  9b 2f f4 eb                                      bl #0x30e868
006029f8  24 30 94 e5                                      ldr r3, [r4, #0x24]
006029fc  00 00 53 e3                                      cmp r3, #0
00602a00  f3 ff ff 0a                                      beq #0x6029d4
00602a04  01 30 83 e2                                      add r3, r3, #1
00602a08  03 01 a0 e1                                      lsl r0, r3, #2
00602a0c  00 10 a0 e3                                      mov r1, #0
00602a10  e4 c5 fc eb                                      bl #0x5341a8
00602a14  24 50 94 e5                                      ldr r5, [r4, #0x24]
00602a18  0c 00 84 e5                                      str r0, [r4, #0xc]
00602a1c  08 60 94 e5                                      ldr r6, [r4, #8]
00602a20  00 00 55 e3                                      cmp r5, #0
00602a24  10 80 94 e5                                      ldr r8, [r4, #0x10]
00602a28  14 a0 94 e5                                      ldr sl, [r4, #0x14]
00602a2c  10 00 00 0a                                      beq #0x602a74
00602a30  00 50 a0 e3                                      mov r5, #0
00602a34  05 90 a0 e1                                      mov sb, r5
00602a38  75 30 ef e6                                      uxtb r3, r5
00602a3c  07 00 a0 e1                                      mov r0, r7
00602a40  08 10 a0 e1                                      mov r1, r8
00602a44  0a 20 a0 e1                                      mov r2, sl
00602a48  00 90 8d e5                                      str sb, [sp]
00602a4c  5e ac ff eb                                      bl #0x5edbcc
00602a50  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00602a54  00 60 86 e0                                      add r6, r6, r0
00602a58  05 61 83 e7                                      str r6, [r3, r5, lsl #2]
00602a5c  24 30 94 e5                                      ldr r3, [r4, #0x24]
00602a60  01 50 85 e2                                      add r5, r5, #1
00602a64  05 00 53 e1                                      cmp r3, r5
00602a68  f2 ff ff 8a                                      bhi #0x602a38
00602a6c  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00602a70  05 51 a0 e1                                      lsl r5, r5, #2
00602a74  00 30 a0 e3                                      mov r3, #0
00602a78  05 30 80 e7                                      str r3, [r0, r5]
00602a7c  d4 ff ff ea                                      b #0x6029d4
; mapping-symbol data/literal pool
00602a80  48 21 39 00 10 06 00 00                          .byte 0x48, 0x21, 0x39, 0x00, 0x10, 0x06, 0x00, 0x00
