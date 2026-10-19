; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0003ec78, declared_size=132, range_size=132, mode=arm
; class-group: rg_etc1::etc1_block
; alias: _ZN7rg_etc110etc1_block11pack_color5ERKNS_13color_quad_u8Ebj
; demangled: rg_etc1::etc1_block::pack_color5(rg_etc1::color_quad_u8 const&, bool, unsigned int)
; decoder-mode: arm
0003ec78  00 c0 d0 e5                                      ldrb ip, [r0]
0003ec7c  01 00 51 e3                                      cmp r1, #1
0003ec80  01 30 d0 e5                                      ldrb r3, [r0, #1]
0003ec84  02 00 d0 e5                                      ldrb r0, [r0, #2]
0003ec88  10 00 00 1a                                      bne #0x3ecd0
0003ec8c  00 48 2d e9                                      push {fp, lr}
0003ec90  0d b0 a0 e1                                      mov fp, sp
0003ec94  83 12 63 e0                                      rsb r1, r3, r3, lsl #5
0003ec98  81 30 08 e3                                      movw r3, #0x8081
0003ec9c  80 02 60 e0                                      rsb r0, r0, r0, lsl #5
0003eca0  02 10 81 e0                                      add r1, r1, r2
0003eca4  80 30 48 e3                                      movt r3, #0x8080
0003eca8  02 00 80 e0                                      add r0, r0, r2
0003ecac  91 13 8e e0                                      umull r1, lr, r1, r3
0003ecb0  90 03 81 e0                                      umull r0, r1, r0, r3
0003ecb4  8c 02 6c e0                                      rsb r0, ip, ip, lsl #5
0003ecb8  02 00 80 e0                                      add r0, r0, r2
0003ecbc  90 03 82 e0                                      umull r0, r2, r0, r3
0003ecc0  ae 33 a0 e1                                      lsr r3, lr, #7
0003ecc4  a1 03 a0 e1                                      lsr r0, r1, #7
0003ecc8  a2 c3 a0 e1                                      lsr ip, r2, #7
0003eccc  00 48 bd e8                                      pop {fp, lr}
0003ecd0  1f 10 a0 e3                                      mov r1, #0x1f
0003ecd4  1f 00 53 e3                                      cmp r3, #0x1f
0003ecd8  01 30 a0 21                                      movhs r3, r1
0003ecdc  1f 00 50 e3                                      cmp r0, #0x1f
0003ece0  01 00 a0 21                                      movhs r0, r1
0003ece4  1f 00 5c e3                                      cmp ip, #0x1f
0003ece8  83 02 80 e1                                      orr r0, r0, r3, lsl #5
0003ecec  0c 10 a0 31                                      movlo r1, ip
0003ecf0  01 05 80 e1                                      orr r0, r0, r1, lsl #10
0003ecf4  70 00 ff e6                                      uxth r0, r0
0003ecf8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0003ecfc, declared_size=124, range_size=124, mode=arm
; class-group: rg_etc1::etc1_block
; alias: _ZN7rg_etc110etc1_block11pack_color5Ejjjbj
; demangled: rg_etc1::etc1_block::pack_color5(unsigned int, unsigned int, unsigned int, bool, unsigned int)
; decoder-mode: arm
0003ecfc  01 00 53 e3                                      cmp r3, #1
0003ed00  11 00 00 1a                                      bne #0x3ed4c
0003ed04  00 48 2d e9                                      push {fp, lr}
0003ed08  0d b0 a0 e1                                      mov fp, sp
0003ed0c  08 c0 9b e5                                      ldr ip, [fp, #8]
0003ed10  81 12 61 e0                                      rsb r1, r1, r1, lsl #5
0003ed14  81 30 08 e3                                      movw r3, #0x8081
0003ed18  80 02 60 e0                                      rsb r0, r0, r0, lsl #5
0003ed1c  0c 10 81 e0                                      add r1, r1, ip
0003ed20  80 30 48 e3                                      movt r3, #0x8080
0003ed24  0c 00 80 e0                                      add r0, r0, ip
0003ed28  91 13 8e e0                                      umull r1, lr, r1, r3
0003ed2c  82 12 62 e0                                      rsb r1, r2, r2, lsl #5
0003ed30  0c 10 81 e0                                      add r1, r1, ip
0003ed34  91 13 82 e0                                      umull r1, r2, r1, r3
0003ed38  ae 13 a0 e1                                      lsr r1, lr, #7
0003ed3c  90 03 83 e0                                      umull r0, r3, r0, r3
0003ed40  a2 23 a0 e1                                      lsr r2, r2, #7
0003ed44  a3 03 a0 e1                                      lsr r0, r3, #7
0003ed48  00 48 bd e8                                      pop {fp, lr}
0003ed4c  1f 30 a0 e3                                      mov r3, #0x1f
0003ed50  1f 00 51 e3                                      cmp r1, #0x1f
0003ed54  03 10 a0 21                                      movhs r1, r3
0003ed58  1f 00 52 e3                                      cmp r2, #0x1f
0003ed5c  03 20 a0 21                                      movhs r2, r3
0003ed60  1f 00 50 e3                                      cmp r0, #0x1f
0003ed64  81 12 82 e1                                      orr r1, r2, r1, lsl #5
0003ed68  00 30 a0 31                                      movlo r3, r0
0003ed6c  03 05 81 e1                                      orr r0, r1, r3, lsl #10
0003ed70  70 00 ff e6                                      uxth r0, r0
0003ed74  1e ff 2f e1                                      bx lr

; FUNCTION 0x0003ed78, declared_size=80, range_size=80, mode=arm
; class-group: rg_etc1::etc1_block
; alias: _ZN7rg_etc110etc1_block13unpack_color5Etbj
; demangled: rg_etc1::etc1_block::unpack_color5(unsigned short, bool, unsigned int)
; decoder-mode: arm
0003ed78  00 48 2d e9                                      push {fp, lr}
0003ed7c  0d b0 a0 e1                                      mov fp, sp
0003ed80  51 c5 e4 e7                                      ubfx ip, r1, #0xa, #5
0003ed84  d1 e2 e4 e7                                      ubfx lr, r1, #5, #5
0003ed88  1f 10 01 e2                                      and r1, r1, #0x1f
0003ed8c  01 00 52 e3                                      cmp r2, #1
0003ed90  05 00 00 1a                                      bne #0x3edac
0003ed94  8c 21 a0 e1                                      lsl r2, ip, #3
0003ed98  2c c1 82 e1                                      orr ip, r2, ip, lsr #2
0003ed9c  8e 21 a0 e1                                      lsl r2, lr, #3
0003eda0  2e e1 82 e1                                      orr lr, r2, lr, lsr #2
0003eda4  81 21 a0 e1                                      lsl r2, r1, #3
0003eda8  21 11 82 e1                                      orr r1, r2, r1, lsr #2
0003edac  ff 00 53 e3                                      cmp r3, #0xff
0003edb0  01 e0 c0 e5                                      strb lr, [r0, #1]
0003edb4  ff 30 a0 23                                      movhs r3, #0xff
0003edb8  00 c0 c0 e5                                      strb ip, [r0]
0003edbc  02 10 c0 e5                                      strb r1, [r0, #2]
0003edc0  03 30 c0 e5                                      strb r3, [r0, #3]
0003edc4  00 88 bd e8                                      pop {fp, pc}

; FUNCTION 0x0003edc8, declared_size=84, range_size=84, mode=arm
; class-group: rg_etc1::etc1_block
; alias: _ZN7rg_etc110etc1_block13unpack_color5ERjS1_S1_tb
; demangled: rg_etc1::etc1_block::unpack_color5(unsigned int&, unsigned int&, unsigned int&, unsigned short, bool)
; decoder-mode: arm
0003edc8  10 4c 2d e9                                      push {r4, sl, fp, lr}
0003edcc  08 b0 8d e2                                      add fp, sp, #8
0003edd0  08 40 9b e5                                      ldr r4, [fp, #8]
0003edd4  53 e5 e4 e7                                      ubfx lr, r3, #0xa, #5
0003edd8  d3 c2 e4 e7                                      ubfx ip, r3, #5, #5
0003eddc  1f 30 03 e2                                      and r3, r3, #0x1f
0003ede0  01 00 54 e3                                      cmp r4, #1
0003ede4  05 00 00 1a                                      bne #0x3ee00
0003ede8  8e 41 a0 e1                                      lsl r4, lr, #3
0003edec  2e e1 84 e1                                      orr lr, r4, lr, lsr #2
0003edf0  8c 41 a0 e1                                      lsl r4, ip, #3
0003edf4  2c c1 84 e1                                      orr ip, r4, ip, lsr #2
0003edf8  83 41 a0 e1                                      lsl r4, r3, #3
0003edfc  23 31 84 e1                                      orr r3, r4, r3, lsr #2
0003ee00  7e 40 ef e6                                      uxtb r4, lr
0003ee04  00 40 80 e5                                      str r4, [r0]
0003ee08  7c 00 ef e6                                      uxtb r0, ip
0003ee0c  00 00 81 e5                                      str r0, [r1]
0003ee10  73 00 ef e6                                      uxtb r0, r3
0003ee14  00 00 82 e5                                      str r0, [r2]
0003ee18  10 8c bd e8                                      pop {r4, sl, fp, pc}

; FUNCTION 0x0003ee1c, declared_size=240, range_size=240, mode=arm
; class-group: rg_etc1::etc1_block
; alias: _ZN7rg_etc110etc1_block13unpack_color5ERNS_13color_quad_u8Ettbj
; demangled: rg_etc1::etc1_block::unpack_color5(rg_etc1::color_quad_u8&, unsigned short, unsigned short, bool, unsigned int)
; decoder-mode: arm
0003ee1c  70 4c 2d e9                                      push {r4, r5, r6, sl, fp, lr}
0003ee20  10 b0 8d e2                                      add fp, sp, #0x10
0003ee24  07 60 02 e2                                      and r6, r2, #7
0003ee28  07 c0 e0 e3                                      mvn ip, #7
0003ee2c  03 00 56 e3                                      cmp r6, #3
0003ee30  1f 40 01 e2                                      and r4, r1, #0x1f
0003ee34  0c 60 82 81                                      orrhi r6, r2, ip
0003ee38  04 60 86 e0                                      add r6, r6, r4
0003ee3c  d2 41 e2 e7                                      ubfx r4, r2, #3, #3
0003ee40  03 00 54 e3                                      cmp r4, #3
0003ee44  d1 52 e4 e7                                      ubfx r5, r1, #5, #5
0003ee48  a2 41 8c 81                                      orrhi r4, ip, r2, lsr #3
0003ee4c  05 40 84 e0                                      add r4, r4, r5
0003ee50  52 53 e2 e7                                      ubfx r5, r2, #6, #3
0003ee54  03 00 55 e3                                      cmp r5, #3
0003ee58  51 15 e4 e7                                      ubfx r1, r1, #0xa, #5
0003ee5c  22 53 8c 81                                      orrhi r5, ip, r2, lsr #6
0003ee60  06 e0 84 e1                                      orr lr, r4, r6
0003ee64  01 50 85 e0                                      add r5, r5, r1
0003ee68  01 c0 a0 e3                                      mov ip, #1
0003ee6c  05 10 8e e1                                      orr r1, lr, r5
0003ee70  20 00 51 e3                                      cmp r1, #0x20
0003ee74  10 00 00 3a                                      blo #0x3eebc
0003ee78  1f 00 56 e3                                      cmp r6, #0x1f
0003ee7c  1f e0 a0 e3                                      mov lr, #0x1f
0003ee80  06 e0 a0 b1                                      movlt lr, r6
0003ee84  00 c0 a0 e3                                      mov ip, #0
0003ee88  00 00 56 e3                                      cmp r6, #0
0003ee8c  1f 20 a0 e3                                      mov r2, #0x1f
0003ee90  0c e0 a0 d1                                      movle lr, ip
0003ee94  1f 00 54 e3                                      cmp r4, #0x1f
0003ee98  04 20 a0 b1                                      movlt r2, r4
0003ee9c  00 00 54 e3                                      cmp r4, #0
0003eea0  0c 20 a0 d1                                      movle r2, ip
0003eea4  1f 10 a0 e3                                      mov r1, #0x1f
0003eea8  1f 00 55 e3                                      cmp r5, #0x1f
0003eeac  05 10 a0 b1                                      movlt r1, r5
0003eeb0  00 00 55 e3                                      cmp r5, #0
0003eeb4  0c 10 a0 d1                                      movle r1, ip
0003eeb8  02 00 00 ea                                      b #0x3eec8
0003eebc  06 e0 a0 e1                                      mov lr, r6
0003eec0  04 20 a0 e1                                      mov r2, r4
0003eec4  05 10 a0 e1                                      mov r1, r5
0003eec8  08 40 9b e5                                      ldr r4, [fp, #8]
0003eecc  01 00 53 e3                                      cmp r3, #1
0003eed0  05 00 00 1a                                      bne #0x3eeec
0003eed4  81 31 a0 e1                                      lsl r3, r1, #3
0003eed8  41 11 83 e1                                      orr r1, r3, r1, asr #2
0003eedc  82 31 a0 e1                                      lsl r3, r2, #3
0003eee0  42 21 83 e1                                      orr r2, r3, r2, asr #2
0003eee4  8e 31 a0 e1                                      lsl r3, lr, #3
0003eee8  4e e1 83 e1                                      orr lr, r3, lr, asr #2
0003eeec  ff 00 54 e3                                      cmp r4, #0xff
0003eef0  01 20 c0 e5                                      strb r2, [r0, #1]
0003eef4  ff 40 a0 23                                      movhs r4, #0xff
0003eef8  00 10 c0 e5                                      strb r1, [r0]
0003eefc  02 e0 c0 e5                                      strb lr, [r0, #2]
0003ef00  03 40 c0 e5                                      strb r4, [r0, #3]
0003ef04  0c 00 a0 e1                                      mov r0, ip
0003ef08  70 8c bd e8                                      pop {r4, r5, r6, sl, fp, pc}

; FUNCTION 0x0003ef0c, declared_size=76, range_size=76, mode=arm
; class-group: rg_etc1::etc1_block
; alias: _ZN7rg_etc110etc1_block13unpack_delta3ERiS1_S1_t
; demangled: rg_etc1::etc1_block::unpack_delta3(int&, int&, int&, unsigned short)
; decoder-mode: arm
0003ef0c  53 c3 e2 e7                                      ubfx ip, r3, #6, #3
0003ef10  00 c0 80 e5                                      str ip, [r0]
0003ef14  d3 c1 e2 e7                                      ubfx ip, r3, #3, #3
0003ef18  00 c0 81 e5                                      str ip, [r1]
0003ef1c  07 30 03 e2                                      and r3, r3, #7
0003ef20  00 30 82 e5                                      str r3, [r2]
0003ef24  00 30 90 e5                                      ldr r3, [r0]
0003ef28  04 00 53 e3                                      cmp r3, #4
0003ef2c  08 30 43 a2                                      subge r3, r3, #8
0003ef30  00 30 80 a5                                      strge r3, [r0]
0003ef34  00 00 91 e5                                      ldr r0, [r1]
0003ef38  04 00 50 e3                                      cmp r0, #4
0003ef3c  08 00 40 a2                                      subge r0, r0, #8
0003ef40  00 00 81 a5                                      strge r0, [r1]
0003ef44  00 00 92 e5                                      ldr r0, [r2]
0003ef48  04 00 50 e3                                      cmp r0, #4
0003ef4c  08 00 40 a2                                      subge r0, r0, #8
0003ef50  00 00 82 a5                                      strge r0, [r2]
0003ef54  1e ff 2f e1                                      bx lr

; FUNCTION 0x0003ef58, declared_size=132, range_size=132, mode=arm
; class-group: rg_etc1::etc1_block
; alias: _ZN7rg_etc110etc1_block13unpack_color5ERjS1_S1_ttbj
; demangled: rg_etc1::etc1_block::unpack_color5(unsigned int&, unsigned int&, unsigned int&, unsigned short, unsigned short, bool, unsigned int)
; decoder-mode: arm
0003ef58  70 4c 2d e9                                      push {r4, r5, r6, sl, fp, lr}
0003ef5c  10 b0 8d e2                                      add fp, sp, #0x10
0003ef60  10 d0 4d e2                                      sub sp, sp, #0x10
0003ef64  00 60 a0 e1                                      mov r6, r0
0003ef68  64 00 9f e5                                      ldr r0, [pc, #0x64]
0003ef6c  08 e0 8b e2                                      add lr, fp, #8
0003ef70  02 40 a0 e1                                      mov r4, r2
0003ef74  01 50 a0 e1                                      mov r5, r1
0003ef78  00 00 9f e7                                      ldr r0, [pc, r0]
0003ef7c  04 50 9e e8                                      ldm lr, {r2, ip, lr}
0003ef80  00 10 90 e5                                      ldr r1, [r0]
0003ef84  08 00 8d e2                                      add r0, sp, #8
0003ef88  0c 10 8d e5                                      str r1, [sp, #0xc]
0003ef8c  03 10 a0 e1                                      mov r1, r3
0003ef90  0c 30 a0 e1                                      mov r3, ip
0003ef94  00 e0 8d e5                                      str lr, [sp]
0003ef98  14 cd ff eb                                      bl #0x323f0
0003ef9c  08 10 dd e5                                      ldrb r1, [sp, #8]
0003efa0  00 10 86 e5                                      str r1, [r6]
0003efa4  09 10 dd e5                                      ldrb r1, [sp, #9]
0003efa8  00 10 85 e5                                      str r1, [r5]
0003efac  0a 10 dd e5                                      ldrb r1, [sp, #0xa]
0003efb0  00 10 84 e5                                      str r1, [r4]
0003efb4  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
0003efb8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0003efbc  01 10 9f e7                                      ldr r1, [pc, r1]
0003efc0  00 10 91 e5                                      ldr r1, [r1]
0003efc4  02 10 51 e0                                      subs r1, r1, r2
0003efc8  10 d0 4b 02                                      subeq sp, fp, #0x10
0003efcc  70 8c bd 08                                      popeq {r4, r5, r6, sl, fp, pc}
0003efd0  22 cc ff eb                                      bl #0x32060
0003efd4  38 d5 09 00                                      andeq sp, sb, r8, lsr r5
0003efd8  f4 d4 09 00                                      strdeq sp, lr, [sb], -r4

; FUNCTION 0x0003efdc, declared_size=44, range_size=44, mode=arm
; class-group: rg_etc1::etc1_block
; alias: _ZN7rg_etc110etc1_block11pack_delta3Eiii
; demangled: rg_etc1::etc1_block::pack_delta3(int, int, int)
; decoder-mode: arm
0003efdc  00 00 51 e3                                      cmp r1, #0
0003efe0  08 10 81 b2                                      addlt r1, r1, #8
0003efe4  00 00 50 e3                                      cmp r0, #0
0003efe8  08 00 80 b2                                      addlt r0, r0, #8
0003efec  00 00 52 e3                                      cmp r2, #0
0003eff0  81 11 a0 e1                                      lsl r1, r1, #3
0003eff4  08 20 82 b2                                      addlt r2, r2, #8
0003eff8  00 03 81 e1                                      orr r0, r1, r0, lsl #6
0003effc  02 00 80 e1                                      orr r0, r0, r2
0003f000  70 00 ff e6                                      uxth r0, r0
0003f004  1e ff 2f e1                                      bx lr

; FUNCTION 0x0003f008, declared_size=132, range_size=132, mode=arm
; class-group: rg_etc1::etc1_block
; alias: _ZN7rg_etc110etc1_block11pack_color4ERKNS_13color_quad_u8Ebj
; demangled: rg_etc1::etc1_block::pack_color4(rg_etc1::color_quad_u8 const&, bool, unsigned int)
; decoder-mode: arm
0003f008  00 c0 d0 e5                                      ldrb ip, [r0]
0003f00c  01 00 51 e3                                      cmp r1, #1
0003f010  01 30 d0 e5                                      ldrb r3, [r0, #1]
0003f014  02 00 d0 e5                                      ldrb r0, [r0, #2]
0003f018  10 00 00 1a                                      bne #0x3f060
0003f01c  00 48 2d e9                                      push {fp, lr}
0003f020  0d b0 a0 e1                                      mov fp, sp
0003f024  03 12 63 e0                                      rsb r1, r3, r3, lsl #4
0003f028  81 30 08 e3                                      movw r3, #0x8081
0003f02c  00 02 60 e0                                      rsb r0, r0, r0, lsl #4
0003f030  02 10 81 e0                                      add r1, r1, r2
0003f034  80 30 48 e3                                      movt r3, #0x8080
0003f038  02 00 80 e0                                      add r0, r0, r2
0003f03c  91 13 8e e0                                      umull r1, lr, r1, r3
0003f040  90 03 81 e0                                      umull r0, r1, r0, r3
0003f044  0c 02 6c e0                                      rsb r0, ip, ip, lsl #4
0003f048  02 00 80 e0                                      add r0, r0, r2
0003f04c  90 03 82 e0                                      umull r0, r2, r0, r3
0003f050  ae 33 a0 e1                                      lsr r3, lr, #7
0003f054  a1 03 a0 e1                                      lsr r0, r1, #7
0003f058  a2 c3 a0 e1                                      lsr ip, r2, #7
0003f05c  00 48 bd e8                                      pop {fp, lr}
0003f060  0f 10 a0 e3                                      mov r1, #0xf
0003f064  0f 00 53 e3                                      cmp r3, #0xf
0003f068  01 30 a0 21                                      movhs r3, r1
0003f06c  0f 00 50 e3                                      cmp r0, #0xf
0003f070  01 00 a0 21                                      movhs r0, r1
0003f074  0f 00 5c e3                                      cmp ip, #0xf
0003f078  03 02 80 e1                                      orr r0, r0, r3, lsl #4
0003f07c  0c 10 a0 31                                      movlo r1, ip
0003f080  01 04 80 e1                                      orr r0, r0, r1, lsl #8
0003f084  70 00 ff e6                                      uxth r0, r0
0003f088  1e ff 2f e1                                      bx lr

; FUNCTION 0x0003f08c, declared_size=124, range_size=124, mode=arm
; class-group: rg_etc1::etc1_block
; alias: _ZN7rg_etc110etc1_block11pack_color4Ejjjbj
; demangled: rg_etc1::etc1_block::pack_color4(unsigned int, unsigned int, unsigned int, bool, unsigned int)
; decoder-mode: arm
0003f08c  01 00 53 e3                                      cmp r3, #1
0003f090  11 00 00 1a                                      bne #0x3f0dc
0003f094  00 48 2d e9                                      push {fp, lr}
0003f098  0d b0 a0 e1                                      mov fp, sp
0003f09c  08 c0 9b e5                                      ldr ip, [fp, #8]
0003f0a0  01 12 61 e0                                      rsb r1, r1, r1, lsl #4
0003f0a4  81 30 08 e3                                      movw r3, #0x8081
0003f0a8  00 02 60 e0                                      rsb r0, r0, r0, lsl #4
0003f0ac  0c 10 81 e0                                      add r1, r1, ip
0003f0b0  80 30 48 e3                                      movt r3, #0x8080
0003f0b4  0c 00 80 e0                                      add r0, r0, ip
0003f0b8  91 13 8e e0                                      umull r1, lr, r1, r3
0003f0bc  02 12 62 e0                                      rsb r1, r2, r2, lsl #4
0003f0c0  0c 10 81 e0                                      add r1, r1, ip
0003f0c4  91 13 82 e0                                      umull r1, r2, r1, r3
0003f0c8  ae 13 a0 e1                                      lsr r1, lr, #7
0003f0cc  90 03 83 e0                                      umull r0, r3, r0, r3
0003f0d0  a2 23 a0 e1                                      lsr r2, r2, #7
0003f0d4  a3 03 a0 e1                                      lsr r0, r3, #7
0003f0d8  00 48 bd e8                                      pop {fp, lr}
0003f0dc  0f 30 a0 e3                                      mov r3, #0xf
0003f0e0  0f 00 51 e3                                      cmp r1, #0xf
0003f0e4  03 10 a0 21                                      movhs r1, r3
0003f0e8  0f 00 52 e3                                      cmp r2, #0xf
0003f0ec  03 20 a0 21                                      movhs r2, r3
0003f0f0  0f 00 50 e3                                      cmp r0, #0xf
0003f0f4  01 12 82 e1                                      orr r1, r2, r1, lsl #4
0003f0f8  00 30 a0 31                                      movlo r3, r0
0003f0fc  03 04 81 e1                                      orr r0, r1, r3, lsl #8
0003f100  70 00 ff e6                                      uxth r0, r0
0003f104  1e ff 2f e1                                      bx lr

; FUNCTION 0x0003f108, declared_size=64, range_size=64, mode=arm
; class-group: rg_etc1::etc1_block
; alias: _ZN7rg_etc110etc1_block13unpack_color4Etbj
; demangled: rg_etc1::etc1_block::unpack_color4(unsigned short, bool, unsigned int)
; decoder-mode: arm
0003f108  00 48 2d e9                                      push {fp, lr}
0003f10c  0d b0 a0 e1                                      mov fp, sp
0003f110  51 c4 e3 e7                                      ubfx ip, r1, #8, #4
0003f114  51 e2 e3 e7                                      ubfx lr, r1, #4, #4
0003f118  0f 10 01 e2                                      and r1, r1, #0xf
0003f11c  01 00 52 e3                                      cmp r2, #1
0003f120  0e e2 8e 01                                      orreq lr, lr, lr, lsl #4
0003f124  0c c2 8c 01                                      orreq ip, ip, ip, lsl #4
0003f128  01 12 81 01                                      orreq r1, r1, r1, lsl #4
0003f12c  ff 00 53 e3                                      cmp r3, #0xff
0003f130  ff 30 a0 23                                      movhs r3, #0xff
0003f134  01 e0 c0 e5                                      strb lr, [r0, #1]
0003f138  00 c0 c0 e5                                      strb ip, [r0]
0003f13c  02 10 c0 e5                                      strb r1, [r0, #2]
0003f140  03 30 c0 e5                                      strb r3, [r0, #3]
0003f144  00 88 bd e8                                      pop {fp, pc}

; FUNCTION 0x0003f148, declared_size=68, range_size=68, mode=arm
; class-group: rg_etc1::etc1_block
; alias: _ZN7rg_etc110etc1_block13unpack_color4ERjS1_S1_tb
; demangled: rg_etc1::etc1_block::unpack_color4(unsigned int&, unsigned int&, unsigned int&, unsigned short, bool)
; decoder-mode: arm
0003f148  10 4c 2d e9                                      push {r4, sl, fp, lr}
0003f14c  08 b0 8d e2                                      add fp, sp, #8
0003f150  08 40 9b e5                                      ldr r4, [fp, #8]
0003f154  53 e4 e3 e7                                      ubfx lr, r3, #8, #4
0003f158  53 c2 e3 e7                                      ubfx ip, r3, #4, #4
0003f15c  0f 30 03 e2                                      and r3, r3, #0xf
0003f160  01 00 54 e3                                      cmp r4, #1
0003f164  0e e2 8e 01                                      orreq lr, lr, lr, lsl #4
0003f168  0c c2 8c 01                                      orreq ip, ip, ip, lsl #4
0003f16c  03 32 83 01                                      orreq r3, r3, r3, lsl #4
0003f170  7e 40 ef e6                                      uxtb r4, lr
0003f174  00 40 80 e5                                      str r4, [r0]
0003f178  7c 00 ef e6                                      uxtb r0, ip
0003f17c  00 00 81 e5                                      str r0, [r1]
0003f180  73 00 ef e6                                      uxtb r0, r3
0003f184  00 00 82 e5                                      str r0, [r2]
0003f188  10 8c bd e8                                      pop {r4, sl, fp, pc}

; FUNCTION 0x0003f18c, declared_size=396, range_size=396, mode=arm
; class-group: rg_etc1::etc1_block
; alias: _ZN7rg_etc110etc1_block24get_diff_subblock_colorsEPNS_13color_quad_u8Etj
; demangled: rg_etc1::etc1_block::get_diff_subblock_colors(rg_etc1::color_quad_u8*, unsigned short, unsigned int)
; decoder-mode: arm
0003f18c  f0 48 2d e9                                      push {r4, r5, r6, r7, fp, lr}
0003f190  10 b0 8d e2                                      add fp, sp, #0x10
0003f194  6c 31 9f e5                                      ldr r3, [pc, #0x16c]
0003f198  51 71 e2 e7                                      ubfx r7, r1, #2, #3
0003f19c  f8 60 a0 e3                                      mov r6, #0xf8
0003f1a0  21 41 06 e0                                      and r4, r6, r1, lsr #2
0003f1a4  03 30 8f e0                                      add r3, pc, r3
0003f1a8  91 71 c7 e7                                      bfi r7, r1, #3, #5
0003f1ac  02 52 93 e7                                      ldr r5, [r3, r2, lsl #4]
0003f1b0  d1 33 e2 e7                                      ubfx r3, r1, #7, #3
0003f1b4  03 c0 84 e1                                      orr ip, r4, r3
0003f1b8  a1 33 06 e0                                      and r3, r6, r1, lsr #7
0003f1bc  51 16 e2 e7                                      ubfx r1, r1, #0xc, #3
0003f1c0  01 e0 83 e1                                      orr lr, r3, r1
0003f1c4  0c 40 85 e0                                      add r4, r5, ip
0003f1c8  0e 60 85 e0                                      add r6, r5, lr
0003f1cc  01 0c 56 e3                                      cmp r6, #0x100
0003f1d0  c6 1f e0 21                                      mvnhs r1, r6, asr #31
0003f1d4  71 60 ef 26                                      uxtbhs r6, r1
0003f1d8  01 0c 54 e3                                      cmp r4, #0x100
0003f1dc  c4 3f e0 21                                      mvnhs r3, r4, asr #31
0003f1e0  07 10 85 e0                                      add r1, r5, r7
0003f1e4  73 40 ef 26                                      uxtbhs r4, r3
0003f1e8  1c 31 9f e5                                      ldr r3, [pc, #0x11c]
0003f1ec  01 0c 51 e3                                      cmp r1, #0x100
0003f1f0  00 60 c0 e5                                      strb r6, [r0]
0003f1f4  03 30 8f e0                                      add r3, pc, r3
0003f1f8  c1 1f e0 21                                      mvnhs r1, r1, asr #31
0003f1fc  02 32 83 e0                                      add r3, r3, r2, lsl #4
0003f200  01 40 c0 e5                                      strb r4, [r0, #1]
0003f204  ff 40 a0 e3                                      mov r4, #0xff
0003f208  71 10 ef 26                                      uxtbhs r1, r1
0003f20c  04 50 93 e5                                      ldr r5, [r3, #4]
0003f210  03 40 c0 e5                                      strb r4, [r0, #3]
0003f214  0e 60 85 e0                                      add r6, r5, lr
0003f218  02 10 c0 e5                                      strb r1, [r0, #2]
0003f21c  01 0c 56 e3                                      cmp r6, #0x100
0003f220  0c 40 85 e0                                      add r4, r5, ip
0003f224  c6 1f e0 21                                      mvnhs r1, r6, asr #31
0003f228  71 60 ef 26                                      uxtbhs r6, r1
0003f22c  01 0c 54 e3                                      cmp r4, #0x100
0003f230  c4 3f e0 21                                      mvnhs r3, r4, asr #31
0003f234  07 10 85 e0                                      add r1, r5, r7
0003f238  73 40 ef 26                                      uxtbhs r4, r3
0003f23c  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
0003f240  01 0c 51 e3                                      cmp r1, #0x100
0003f244  04 60 c0 e5                                      strb r6, [r0, #4]
0003f248  03 30 8f e0                                      add r3, pc, r3
0003f24c  c1 1f e0 21                                      mvnhs r1, r1, asr #31
0003f250  02 32 83 e0                                      add r3, r3, r2, lsl #4
0003f254  05 40 c0 e5                                      strb r4, [r0, #5]
0003f258  ff 40 a0 e3                                      mov r4, #0xff
0003f25c  71 10 ef 26                                      uxtbhs r1, r1
0003f260  08 50 93 e5                                      ldr r5, [r3, #8]
0003f264  07 40 c0 e5                                      strb r4, [r0, #7]
0003f268  0e 60 85 e0                                      add r6, r5, lr
0003f26c  06 10 c0 e5                                      strb r1, [r0, #6]
0003f270  01 0c 56 e3                                      cmp r6, #0x100
0003f274  0c 40 85 e0                                      add r4, r5, ip
0003f278  c6 1f e0 21                                      mvnhs r1, r6, asr #31
0003f27c  71 60 ef 26                                      uxtbhs r6, r1
0003f280  01 0c 54 e3                                      cmp r4, #0x100
0003f284  c4 3f e0 21                                      mvnhs r3, r4, asr #31
0003f288  08 60 c0 e5                                      strb r6, [r0, #8]
0003f28c  73 40 ef 26                                      uxtbhs r4, r3
0003f290  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
0003f294  09 40 c0 e5                                      strb r4, [r0, #9]
0003f298  ff 40 a0 e3                                      mov r4, #0xff
0003f29c  03 30 8f e0                                      add r3, pc, r3
0003f2a0  07 10 85 e0                                      add r1, r5, r7
0003f2a4  02 22 83 e0                                      add r2, r3, r2, lsl #4
0003f2a8  0b 40 c0 e5                                      strb r4, [r0, #0xb]
0003f2ac  01 0c 51 e3                                      cmp r1, #0x100
0003f2b0  0c 40 92 e5                                      ldr r4, [r2, #0xc]
0003f2b4  c1 1f e0 21                                      mvnhs r1, r1, asr #31
0003f2b8  71 10 ef 26                                      uxtbhs r1, r1
0003f2bc  0e 60 84 e0                                      add r6, r4, lr
0003f2c0  0a 10 c0 e5                                      strb r1, [r0, #0xa]
0003f2c4  01 0c 56 e3                                      cmp r6, #0x100
0003f2c8  0c 20 84 e0                                      add r2, r4, ip
0003f2cc  c6 1f e0 21                                      mvnhs r1, r6, asr #31
0003f2d0  71 60 ef 26                                      uxtbhs r6, r1
0003f2d4  01 0c 52 e3                                      cmp r2, #0x100
0003f2d8  c2 2f e0 21                                      mvnhs r2, r2, asr #31
0003f2dc  07 10 84 e0                                      add r1, r4, r7
0003f2e0  72 20 ef 26                                      uxtbhs r2, r2
0003f2e4  01 0c 51 e3                                      cmp r1, #0x100
0003f2e8  c1 1f e0 21                                      mvnhs r1, r1, asr #31
0003f2ec  0c 60 c0 e5                                      strb r6, [r0, #0xc]
0003f2f0  0d 20 c0 e5                                      strb r2, [r0, #0xd]
0003f2f4  ff 20 a0 e3                                      mov r2, #0xff
0003f2f8  71 10 ef 26                                      uxtbhs r1, r1
0003f2fc  0f 20 c0 e5                                      strb r2, [r0, #0xf]
0003f300  0e 10 c0 e5                                      strb r1, [r0, #0xe]
0003f304  f0 88 bd e8                                      pop {r4, r5, r6, r7, fp, pc}
0003f308  68 49 08 00                                      andeq r4, r8, r8, ror #18
0003f30c  18 49 08 00                                      andeq r4, r8, r8, lsl sb
0003f310  c4 48 08 00                                      andeq r4, r8, r4, asr #17
0003f314  70 48 08 00                                      andeq r4, r8, r0, ror r8

; FUNCTION 0x0003f318, declared_size=564, range_size=564, mode=arm
; class-group: rg_etc1::etc1_block
; alias: _ZN7rg_etc110etc1_block24get_diff_subblock_colorsEPNS_13color_quad_u8Ettj
; demangled: rg_etc1::etc1_block::get_diff_subblock_colors(rg_etc1::color_quad_u8*, unsigned short, unsigned short, unsigned int)
; decoder-mode: arm
0003f318  f0 4d 2d e9                                      push {r4, r5, r6, r7, r8, sl, fp, lr}
0003f31c  18 b0 8d e2                                      add fp, sp, #0x18
0003f320  07 70 02 e2                                      and r7, r2, #7
0003f324  07 c0 e0 e3                                      mvn ip, #7
0003f328  03 00 57 e3                                      cmp r7, #3
0003f32c  1f 60 01 e2                                      and r6, r1, #0x1f
0003f330  0c 70 82 81                                      orrhi r7, r2, ip
0003f334  06 60 87 e0                                      add r6, r7, r6
0003f338  d2 71 e2 e7                                      ubfx r7, r2, #3, #3
0003f33c  03 00 57 e3                                      cmp r7, #3
0003f340  d1 42 e4 e7                                      ubfx r4, r1, #5, #5
0003f344  52 53 e2 e7                                      ubfx r5, r2, #6, #3
0003f348  a2 71 8c 81                                      orrhi r7, ip, r2, lsr #3
0003f34c  03 00 55 e3                                      cmp r5, #3
0003f350  04 70 87 e0                                      add r7, r7, r4
0003f354  22 53 8c 81                                      orrhi r5, ip, r2, lsr #6
0003f358  51 15 e4 e7                                      ubfx r1, r1, #0xa, #5
0003f35c  06 40 87 e1                                      orr r4, r7, r6
0003f360  01 20 85 e0                                      add r2, r5, r1
0003f364  02 10 84 e1                                      orr r1, r4, r2
0003f368  01 c0 a0 e3                                      mov ip, #1
0003f36c  20 00 51 e3                                      cmp r1, #0x20
0003f370  10 00 00 3a                                      blo #0x3f3b8
0003f374  1f 00 56 e3                                      cmp r6, #0x1f
0003f378  1f 10 a0 e3                                      mov r1, #0x1f
0003f37c  06 10 a0 b1                                      movlt r1, r6
0003f380  00 c0 a0 e3                                      mov ip, #0
0003f384  00 00 56 e3                                      cmp r6, #0
0003f388  1f 50 a0 e3                                      mov r5, #0x1f
0003f38c  0c 10 a0 d1                                      movle r1, ip
0003f390  1f 00 57 e3                                      cmp r7, #0x1f
0003f394  07 50 a0 b1                                      movlt r5, r7
0003f398  00 00 57 e3                                      cmp r7, #0
0003f39c  0c 50 a0 d1                                      movle r5, ip
0003f3a0  1f 40 a0 e3                                      mov r4, #0x1f
0003f3a4  1f 00 52 e3                                      cmp r2, #0x1f
0003f3a8  02 40 a0 b1                                      movlt r4, r2
0003f3ac  00 00 52 e3                                      cmp r2, #0
0003f3b0  0c 40 a0 d1                                      movle r4, ip
0003f3b4  02 00 00 ea                                      b #0x3f3c4
0003f3b8  06 10 a0 e1                                      mov r1, r6
0003f3bc  07 50 a0 e1                                      mov r5, r7
0003f3c0  02 40 a0 e1                                      mov r4, r2
0003f3c4  70 21 9f e5                                      ldr r2, [pc, #0x170]
0003f3c8  02 20 8f e0                                      add r2, pc, r2
0003f3cc  03 72 92 e7                                      ldr r7, [r2, r3, lsl #4]
0003f3d0  81 21 a0 e1                                      lsl r2, r1, #3
0003f3d4  21 81 82 e1                                      orr r8, r2, r1, lsr #2
0003f3d8  84 21 a0 e1                                      lsl r2, r4, #3
0003f3dc  85 11 a0 e1                                      lsl r1, r5, #3
0003f3e0  24 21 82 e1                                      orr r2, r2, r4, lsr #2
0003f3e4  25 11 81 e1                                      orr r1, r1, r5, lsr #2
0003f3e8  78 40 e7 e6                                      uxtab r4, r7, r8
0003f3ec  72 60 e7 e6                                      uxtab r6, r7, r2
0003f3f0  72 e0 ef e6                                      uxtb lr, r2
0003f3f4  01 0c 56 e3                                      cmp r6, #0x100
0003f3f8  40 21 9f e5                                      ldr r2, [pc, #0x140]
0003f3fc  c6 6f e0 21                                      mvnhs r6, r6, asr #31
0003f400  71 50 e7 e6                                      uxtab r5, r7, r1
0003f404  76 60 ef 26                                      uxtbhs r6, r6
0003f408  01 0c 55 e3                                      cmp r5, #0x100
0003f40c  c5 7f e0 21                                      mvnhs r7, r5, asr #31
0003f410  02 20 8f e0                                      add r2, pc, r2
0003f414  77 50 ef 26                                      uxtbhs r5, r7
0003f418  03 22 82 e0                                      add r2, r2, r3, lsl #4
0003f41c  00 60 c0 e5                                      strb r6, [r0]
0003f420  01 0c 54 e3                                      cmp r4, #0x100
0003f424  01 50 c0 e5                                      strb r5, [r0, #1]
0003f428  ff 50 a0 e3                                      mov r5, #0xff
0003f42c  03 50 c0 e5                                      strb r5, [r0, #3]
0003f430  71 70 ef e6                                      uxtb r7, r1
0003f434  04 50 92 e5                                      ldr r5, [r2, #4]
0003f438  c4 1f e0 21                                      mvnhs r1, r4, asr #31
0003f43c  71 40 ef 26                                      uxtbhs r4, r1
0003f440  78 10 ef e6                                      uxtb r1, r8
0003f444  0e 60 85 e0                                      add r6, r5, lr
0003f448  02 40 c0 e5                                      strb r4, [r0, #2]
0003f44c  01 0c 56 e3                                      cmp r6, #0x100
0003f450  07 20 85 e0                                      add r2, r5, r7
0003f454  c6 4f e0 21                                      mvnhs r4, r6, asr #31
0003f458  74 60 ef 26                                      uxtbhs r6, r4
0003f45c  01 0c 52 e3                                      cmp r2, #0x100
0003f460  c2 2f e0 21                                      mvnhs r2, r2, asr #31
0003f464  01 40 85 e0                                      add r4, r5, r1
0003f468  72 20 ef 26                                      uxtbhs r2, r2
0003f46c  01 0c 54 e3                                      cmp r4, #0x100
0003f470  04 60 c0 e5                                      strb r6, [r0, #4]
0003f474  ff 50 a0 e3                                      mov r5, #0xff
0003f478  05 20 c0 e5                                      strb r2, [r0, #5]
0003f47c  c4 2f e0 21                                      mvnhs r2, r4, asr #31
0003f480  72 40 ef 26                                      uxtbhs r4, r2
0003f484  b8 20 9f e5                                      ldr r2, [pc, #0xb8]
0003f488  07 50 c0 e5                                      strb r5, [r0, #7]
0003f48c  02 20 8f e0                                      add r2, pc, r2
0003f490  06 40 c0 e5                                      strb r4, [r0, #6]
0003f494  03 22 82 e0                                      add r2, r2, r3, lsl #4
0003f498  08 50 92 e5                                      ldr r5, [r2, #8]
0003f49c  0e 60 85 e0                                      add r6, r5, lr
0003f4a0  07 20 85 e0                                      add r2, r5, r7
0003f4a4  01 0c 56 e3                                      cmp r6, #0x100
0003f4a8  c6 4f e0 21                                      mvnhs r4, r6, asr #31
0003f4ac  74 60 ef 26                                      uxtbhs r6, r4
0003f4b0  01 0c 52 e3                                      cmp r2, #0x100
0003f4b4  c2 2f e0 21                                      mvnhs r2, r2, asr #31
0003f4b8  01 40 85 e0                                      add r4, r5, r1
0003f4bc  72 20 ef 26                                      uxtbhs r2, r2
0003f4c0  01 0c 54 e3                                      cmp r4, #0x100
0003f4c4  08 60 c0 e5                                      strb r6, [r0, #8]
0003f4c8  ff 50 a0 e3                                      mov r5, #0xff
0003f4cc  09 20 c0 e5                                      strb r2, [r0, #9]
0003f4d0  c4 2f e0 21                                      mvnhs r2, r4, asr #31
0003f4d4  72 40 ef 26                                      uxtbhs r4, r2
0003f4d8  68 20 9f e5                                      ldr r2, [pc, #0x68]
0003f4dc  0b 50 c0 e5                                      strb r5, [r0, #0xb]
0003f4e0  02 20 8f e0                                      add r2, pc, r2
0003f4e4  0a 40 c0 e5                                      strb r4, [r0, #0xa]
0003f4e8  03 22 82 e0                                      add r2, r2, r3, lsl #4
0003f4ec  0c 30 92 e5                                      ldr r3, [r2, #0xc]
0003f4f0  07 20 83 e0                                      add r2, r3, r7
0003f4f4  0e 70 83 e0                                      add r7, r3, lr
0003f4f8  01 0c 57 e3                                      cmp r7, #0x100
0003f4fc  01 10 83 e0                                      add r1, r3, r1
0003f500  c7 7f e0 21                                      mvnhs r7, r7, asr #31
0003f504  77 70 ef 26                                      uxtbhs r7, r7
0003f508  01 0c 52 e3                                      cmp r2, #0x100
0003f50c  c2 2f e0 21                                      mvnhs r2, r2, asr #31
0003f510  0c 70 c0 e5                                      strb r7, [r0, #0xc]
0003f514  72 20 ef 26                                      uxtbhs r2, r2
0003f518  01 0c 51 e3                                      cmp r1, #0x100
0003f51c  c1 1f e0 21                                      mvnhs r1, r1, asr #31
0003f520  0d 20 c0 e5                                      strb r2, [r0, #0xd]
0003f524  ff 20 a0 e3                                      mov r2, #0xff
0003f528  71 10 ef 26                                      uxtbhs r1, r1
0003f52c  0f 20 c0 e5                                      strb r2, [r0, #0xf]
0003f530  0e 10 c0 e5                                      strb r1, [r0, #0xe]
0003f534  0c 00 a0 e1                                      mov r0, ip
0003f538  f0 8d bd e8                                      pop {r4, r5, r6, r7, r8, sl, fp, pc}
0003f53c  44 47 08 00                                      andeq r4, r8, r4, asr #14
0003f540  fc 46 08 00                                      strdeq r4, r5, [r8], -ip
0003f544  80 46 08 00                                      andeq r4, r8, r0, lsl #13
0003f548  2c 46 08 00                                      andeq r4, r8, ip, lsr #12

; FUNCTION 0x0003f54c, declared_size=396, range_size=396, mode=arm
; class-group: rg_etc1::etc1_block
; alias: _ZN7rg_etc110etc1_block23get_abs_subblock_colorsEPNS_13color_quad_u8Etj
; demangled: rg_etc1::etc1_block::get_abs_subblock_colors(rg_etc1::color_quad_u8*, unsigned short, unsigned int)
; decoder-mode: arm
0003f54c  70 4c 2d e9                                      push {r4, r5, r6, sl, fp, lr}
0003f550  10 b0 8d e2                                      add fp, sp, #0x10
0003f554  6c 31 9f e5                                      ldr r3, [pc, #0x16c]
0003f558  f0 60 01 e2                                      and r6, r1, #0xf0
0003f55c  51 42 e3 e7                                      ubfx r4, r1, #4, #4
0003f560  03 30 8f e0                                      add r3, pc, r3
0003f564  06 c0 84 e1                                      orr ip, r4, r6
0003f568  f0 60 a0 e3                                      mov r6, #0xf0
0003f56c  02 52 93 e7                                      ldr r5, [r3, r2, lsl #4]
0003f570  0f 30 01 e2                                      and r3, r1, #0xf
0003f574  21 62 06 e0                                      and r6, r6, r1, lsr #4
0003f578  11 32 c7 e7                                      bfi r3, r1, #4, #4
0003f57c  51 14 e3 e7                                      ubfx r1, r1, #8, #4
0003f580  01 e0 86 e1                                      orr lr, r6, r1
0003f584  0c 40 85 e0                                      add r4, r5, ip
0003f588  0e 60 85 e0                                      add r6, r5, lr
0003f58c  01 0c 56 e3                                      cmp r6, #0x100
0003f590  c6 1f e0 21                                      mvnhs r1, r6, asr #31
0003f594  71 60 ef 26                                      uxtbhs r6, r1
0003f598  01 0c 54 e3                                      cmp r4, #0x100
0003f59c  c4 4f e0 21                                      mvnhs r4, r4, asr #31
0003f5a0  00 60 c0 e5                                      strb r6, [r0]
0003f5a4  74 40 ef 26                                      uxtbhs r4, r4
0003f5a8  03 10 85 e0                                      add r1, r5, r3
0003f5ac  01 40 c0 e5                                      strb r4, [r0, #1]
0003f5b0  ff 50 a0 e3                                      mov r5, #0xff
0003f5b4  10 41 9f e5                                      ldr r4, [pc, #0x110]
0003f5b8  01 0c 51 e3                                      cmp r1, #0x100
0003f5bc  03 50 c0 e5                                      strb r5, [r0, #3]
0003f5c0  c1 1f e0 21                                      mvnhs r1, r1, asr #31
0003f5c4  04 40 8f e0                                      add r4, pc, r4
0003f5c8  71 10 ef 26                                      uxtbhs r1, r1
0003f5cc  02 42 84 e0                                      add r4, r4, r2, lsl #4
0003f5d0  02 10 c0 e5                                      strb r1, [r0, #2]
0003f5d4  04 50 94 e5                                      ldr r5, [r4, #4]
0003f5d8  0e 60 85 e0                                      add r6, r5, lr
0003f5dc  0c 40 85 e0                                      add r4, r5, ip
0003f5e0  01 0c 56 e3                                      cmp r6, #0x100
0003f5e4  c6 1f e0 21                                      mvnhs r1, r6, asr #31
0003f5e8  71 60 ef 26                                      uxtbhs r6, r1
0003f5ec  01 0c 54 e3                                      cmp r4, #0x100
0003f5f0  c4 4f e0 21                                      mvnhs r4, r4, asr #31
0003f5f4  04 60 c0 e5                                      strb r6, [r0, #4]
0003f5f8  74 40 ef 26                                      uxtbhs r4, r4
0003f5fc  03 10 85 e0                                      add r1, r5, r3
0003f600  05 40 c0 e5                                      strb r4, [r0, #5]
0003f604  ff 50 a0 e3                                      mov r5, #0xff
0003f608  c0 40 9f e5                                      ldr r4, [pc, #0xc0]
0003f60c  01 0c 51 e3                                      cmp r1, #0x100
0003f610  07 50 c0 e5                                      strb r5, [r0, #7]
0003f614  c1 1f e0 21                                      mvnhs r1, r1, asr #31
0003f618  04 40 8f e0                                      add r4, pc, r4
0003f61c  71 10 ef 26                                      uxtbhs r1, r1
0003f620  02 42 84 e0                                      add r4, r4, r2, lsl #4
0003f624  06 10 c0 e5                                      strb r1, [r0, #6]
0003f628  08 50 94 e5                                      ldr r5, [r4, #8]
0003f62c  0e 60 85 e0                                      add r6, r5, lr
0003f630  0c 40 85 e0                                      add r4, r5, ip
0003f634  01 0c 56 e3                                      cmp r6, #0x100
0003f638  c6 1f e0 21                                      mvnhs r1, r6, asr #31
0003f63c  71 60 ef 26                                      uxtbhs r6, r1
0003f640  01 0c 54 e3                                      cmp r4, #0x100
0003f644  c4 4f e0 21                                      mvnhs r4, r4, asr #31
0003f648  08 60 c0 e5                                      strb r6, [r0, #8]
0003f64c  74 40 ef 26                                      uxtbhs r4, r4
0003f650  03 10 85 e0                                      add r1, r5, r3
0003f654  09 40 c0 e5                                      strb r4, [r0, #9]
0003f658  01 0c 51 e3                                      cmp r1, #0x100
0003f65c  70 40 9f e5                                      ldr r4, [pc, #0x70]
0003f660  c1 1f e0 21                                      mvnhs r1, r1, asr #31
0003f664  ff 50 a0 e3                                      mov r5, #0xff
0003f668  71 10 ef 26                                      uxtbhs r1, r1
0003f66c  04 40 8f e0                                      add r4, pc, r4
0003f670  0b 50 c0 e5                                      strb r5, [r0, #0xb]
0003f674  02 22 84 e0                                      add r2, r4, r2, lsl #4
0003f678  0a 10 c0 e5                                      strb r1, [r0, #0xa]
0003f67c  0c 40 92 e5                                      ldr r4, [r2, #0xc]
0003f680  0e 60 84 e0                                      add r6, r4, lr
0003f684  0c 20 84 e0                                      add r2, r4, ip
0003f688  01 0c 56 e3                                      cmp r6, #0x100
0003f68c  c6 1f e0 21                                      mvnhs r1, r6, asr #31
0003f690  71 60 ef 26                                      uxtbhs r6, r1
0003f694  01 0c 52 e3                                      cmp r2, #0x100
0003f698  c2 2f e0 21                                      mvnhs r2, r2, asr #31
0003f69c  03 10 84 e0                                      add r1, r4, r3
0003f6a0  72 20 ef 26                                      uxtbhs r2, r2
0003f6a4  01 0c 51 e3                                      cmp r1, #0x100
0003f6a8  c1 1f e0 21                                      mvnhs r1, r1, asr #31
0003f6ac  0c 60 c0 e5                                      strb r6, [r0, #0xc]
0003f6b0  0d 20 c0 e5                                      strb r2, [r0, #0xd]
0003f6b4  ff 20 a0 e3                                      mov r2, #0xff
0003f6b8  71 10 ef 26                                      uxtbhs r1, r1
0003f6bc  0f 20 c0 e5                                      strb r2, [r0, #0xf]
0003f6c0  0e 10 c0 e5                                      strb r1, [r0, #0xe]
0003f6c4  70 8c bd e8                                      pop {r4, r5, r6, sl, fp, pc}
0003f6c8  ac 45 08 00                                      andeq r4, r8, ip, lsr #11
0003f6cc  48 45 08 00                                      andeq r4, r8, r8, asr #10
0003f6d0  f4 44 08 00                                      strdeq r4, r5, [r8], -r4
0003f6d4  a0 44 08 00                                      andeq r4, r8, r0, lsr #9
