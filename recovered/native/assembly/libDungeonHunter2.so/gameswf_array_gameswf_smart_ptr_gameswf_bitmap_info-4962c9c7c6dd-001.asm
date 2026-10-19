; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00764750, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::smart_ptr<gameswf::bitmap_info> >
; alias: _ZN7gameswf5arrayINS_9smart_ptrINS_11bitmap_infoEEEE7reserveEi
; demangled: gameswf::array<gameswf::smart_ptr<gameswf::bitmap_info> >::reserve(int)
; decoder-mode: arm
00764750  10 40 2d e9                                      push {r4, lr}
00764754  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
00764758  00 40 a0 e1                                      mov r4, r0
0076475c  00 00 53 e3                                      cmp r3, #0
00764760  0f 00 00 1a                                      bne #0x7647a4
00764764  00 00 51 e3                                      cmp r1, #0
00764768  08 20 90 e5                                      ldr r2, [r0, #8]
0076476c  08 10 80 e5                                      str r1, [r0, #8]
00764770  0c 00 00 1a                                      bne #0x7647a8
00764774  00 00 90 e5                                      ldr r0, [r0]
00764778  00 00 50 e3                                      cmp r0, #0
0076477c  01 00 00 0a                                      beq #0x764788
00764780  02 11 a0 e1                                      lsl r1, r2, #2
00764784  eb b8 ff eb                                      bl #0x752b38
00764788  00 30 a0 e3                                      mov r3, #0
0076478c  00 30 84 e5                                      str r3, [r4]
00764790  10 80 bd e8                                      pop {r4, pc}
00764794  01 01 a0 e1                                      lsl r0, r1, #2
00764798  0c 10 a0 e1                                      mov r1, ip
0076479c  fe b8 ff eb                                      bl #0x752b9c
007647a0  00 00 84 e5                                      str r0, [r4]
007647a4  10 80 bd e8                                      pop {r4, pc}
007647a8  00 c0 90 e5                                      ldr ip, [r0]
007647ac  00 00 5c e3                                      cmp ip, #0
007647b0  f7 ff ff 0a                                      beq #0x764794
007647b4  0c 00 a0 e1                                      mov r0, ip
007647b8  01 11 a0 e1                                      lsl r1, r1, #2
007647bc  02 21 a0 e1                                      lsl r2, r2, #2
007647c0  f9 b8 ff eb                                      bl #0x752bac
007647c4  00 00 84 e5                                      str r0, [r4]
007647c8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00765198, declared_size=112, range_size=112, mode=arm
; class-group: gameswf::array<gameswf::smart_ptr<gameswf::bitmap_info> >
; alias: _ZN7gameswf5arrayINS_9smart_ptrINS_11bitmap_infoEEEE6resizeEi.clone.0
; demangled: gameswf::array<gameswf::smart_ptr<gameswf::bitmap_info> >::resize(int) [clone .clone.0]
; decoder-mode: arm
00765198  70 40 2d e9                                      push {r4, r5, r6, lr}
0076519c  04 40 90 e5                                      ldr r4, [r0, #4]
007651a0  00 60 a0 e1                                      mov r6, r0
007651a4  00 00 54 e3                                      cmp r4, #0
007651a8  0b 00 00 da                                      ble #0x7651dc
007651ac  00 50 a0 e3                                      mov r5, #0
007651b0  00 30 96 e5                                      ldr r3, [r6]
007651b4  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
007651b8  01 50 85 e2                                      add r5, r5, #1
007651bc  00 00 50 e3                                      cmp r0, #0
007651c0  00 00 00 0a                                      beq #0x7651c8
007651c4  1d d4 ff eb                                      bl #0x75a240
007651c8  04 00 55 e1                                      cmp r5, r4
007651cc  f7 ff ff 1a                                      bne #0x7651b0
007651d0  00 30 a0 e3                                      mov r3, #0
007651d4  04 30 86 e5                                      str r3, [r6, #4]
007651d8  70 80 bd e8                                      pop {r4, r5, r6, pc}
007651dc  fb ff ff aa                                      bge #0x7651d0
007651e0  04 31 a0 e1                                      lsl r3, r4, #2
007651e4  00 10 a0 e3                                      mov r1, #0
007651e8  00 20 96 e5                                      ldr r2, [r6]
007651ec  01 40 94 e2                                      adds r4, r4, #1
007651f0  03 10 82 e7                                      str r1, [r2, r3]
007651f4  04 30 83 e2                                      add r3, r3, #4
007651f8  fa ff ff 1a                                      bne #0x7651e8
007651fc  00 30 a0 e3                                      mov r3, #0
00765200  04 30 86 e5                                      str r3, [r6, #4]
00765204  70 80 bd e8                                      pop {r4, r5, r6, pc}
