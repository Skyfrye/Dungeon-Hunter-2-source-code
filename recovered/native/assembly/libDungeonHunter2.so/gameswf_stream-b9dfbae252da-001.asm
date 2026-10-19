; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007839a4, declared_size=172, range_size=172, mode=arm
; class-group: gameswf::stream
; alias: _ZN7gameswf6stream9read_uintEi
; demangled: gameswf::stream::read_uint(int)
; decoder-mode: arm
007839a4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
007839a8  00 50 51 e2                                      subs r5, r1, #0
007839ac  00 40 a0 e1                                      mov r4, r0
007839b0  0c d0 4d e2                                      sub sp, sp, #0xc
007839b4  00 00 a0 d3                                      movle r0, #0
007839b8  18 00 00 da                                      ble #0x783a20
007839bc  00 60 a0 e3                                      mov r6, #0
007839c0  07 80 8d e2                                      add r8, sp, #7
007839c4  08 a0 a0 e3                                      mov sl, #8
007839c8  06 70 a0 e1                                      mov r7, r6
007839cc  09 30 d4 e5                                      ldrb r3, [r4, #9]
007839d0  00 00 53 e3                                      cmp r3, #0
007839d4  13 00 00 0a                                      beq #0x783a28
007839d8  05 00 53 e1                                      cmp r3, r5
007839dc  08 00 00 ca                                      bgt #0x783a04
007839e0  08 20 d4 e5                                      ldrb r2, [r4, #8]
007839e4  05 50 63 e0                                      rsb r5, r3, r5
007839e8  08 70 c4 e5                                      strb r7, [r4, #8]
007839ec  12 65 86 e1                                      orr r6, r6, r2, lsl r5
007839f0  09 70 c4 e5                                      strb r7, [r4, #9]
007839f4  00 00 55 e3                                      cmp r5, #0
007839f8  f3 ff ff ca                                      bgt #0x7839cc
007839fc  06 00 a0 e1                                      mov r0, r6
00783a00  06 00 00 ea                                      b #0x783a20
00783a04  08 00 d4 e5                                      ldrb r0, [r4, #8]
00783a08  03 50 65 e0                                      rsb r5, r5, r3
00783a0c  00 30 e0 e3                                      mvn r3, #0
00783a10  13 35 c0 e1                                      bic r3, r0, r3, lsl r5
00783a14  50 05 86 e1                                      orr r0, r6, r0, asr r5
00783a18  08 30 c4 e5                                      strb r3, [r4, #8]
00783a1c  09 50 c4 e5                                      strb r5, [r4, #9]
00783a20  0c d0 8d e2                                      add sp, sp, #0xc
00783a24  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00783a28  04 30 94 e5                                      ldr r3, [r4, #4]
00783a2c  08 00 a0 e1                                      mov r0, r8
00783a30  01 10 a0 e3                                      mov r1, #1
00783a34  00 20 93 e5                                      ldr r2, [r3]
00783a38  0f e0 a0 e1                                      mov lr, pc
00783a3c  08 f0 93 e5                                      ldr pc, [r3, #8]
00783a40  07 30 dd e5                                      ldrb r3, [sp, #7]
00783a44  09 a0 c4 e5                                      strb sl, [r4, #9]
00783a48  08 30 c4 e5                                      strb r3, [r4, #8]
00783a4c  e8 ff ff ea                                      b #0x7839f4

; FUNCTION 0x00783a50, declared_size=24, range_size=24, mode=arm
; class-group: gameswf::stream
; alias: _ZN7gameswf6stream9read_boolEv
; demangled: gameswf::stream::read_bool()
; decoder-mode: arm
00783a50  10 40 2d e9                                      push {r4, lr}
00783a54  01 10 a0 e3                                      mov r1, #1
00783a58  d1 ff ff eb                                      bl #0x7839a4
00783a5c  00 00 50 e2                                      subs r0, r0, #0
00783a60  01 00 a0 13                                      movne r0, #1
00783a64  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00783a68, declared_size=36, range_size=36, mode=arm
; class-group: gameswf::stream
; alias: _ZN7gameswf6stream9read_sintEi
; demangled: gameswf::stream::read_sint(int)
; decoder-mode: arm
00783a68  10 40 2d e9                                      push {r4, lr}
00783a6c  01 40 a0 e1                                      mov r4, r1
00783a70  cb ff ff eb                                      bl #0x7839a4
00783a74  01 30 44 e2                                      sub r3, r4, #1
00783a78  50 33 a0 e1                                      asr r3, r0, r3
00783a7c  01 00 13 e3                                      tst r3, #1
00783a80  00 30 e0 13                                      mvnne r3, #0
00783a84  13 04 80 11                                      orrne r0, r0, r3, lsl r4
00783a88  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00783a8c, declared_size=88, range_size=88, mode=arm
; class-group: gameswf::stream
; alias: _ZN7gameswf6stream12read_float16Ev
; demangled: gameswf::stream::read_float16()
; decoder-mode: arm
00783a8c  04 e0 2d e5                                      str lr, [sp, #-4]!
00783a90  04 30 90 e5                                      ldr r3, [r0, #4]
00783a94  00 20 a0 e3                                      mov r2, #0
00783a98  0c d0 4d e2                                      sub sp, sp, #0xc
00783a9c  09 20 c0 e5                                      strb r2, [r0, #9]
00783aa0  00 20 93 e5                                      ldr r2, [r3]
00783aa4  06 00 8d e2                                      add r0, sp, #6
00783aa8  02 10 a0 e3                                      mov r1, #2
00783aac  0f e0 a0 e1                                      mov lr, pc
00783ab0  08 f0 93 e5                                      ldr pc, [r3, #8]
00783ab4  b6 30 dd e1                                      ldrh r3, [sp, #6]
00783ab8  53 25 e4 e7                                      ubfx r2, r3, #0xa, #5
00783abc  02 09 03 e2                                      and r0, r3, #0x8000
00783ac0  03 3b a0 e1                                      lsl r3, r3, #0x16
00783ac4  00 00 52 e3                                      cmp r2, #0
00783ac8  00 08 a0 e1                                      lsl r0, r0, #0x10
00783acc  6f 20 82 12                                      addne r2, r2, #0x6f
00783ad0  23 3b a0 e1                                      lsr r3, r3, #0x16
00783ad4  82 0b 80 11                                      orrne r0, r0, r2, lsl #23
00783ad8  83 06 80 e1                                      orr r0, r0, r3, lsl #13
00783adc  0c d0 8d e2                                      add sp, sp, #0xc
00783ae0  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x00783ae4, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::stream
; alias: _ZN7gameswf6stream11read_doubleEv
; demangled: gameswf::stream::read_double()
; decoder-mode: arm
00783ae4  04 e0 2d e5                                      str lr, [sp, #-4]!
00783ae8  04 30 90 e5                                      ldr r3, [r0, #4]
00783aec  00 20 a0 e3                                      mov r2, #0
00783af0  0c d0 4d e2                                      sub sp, sp, #0xc
00783af4  09 20 c0 e5                                      strb r2, [r0, #9]
00783af8  08 10 a0 e3                                      mov r1, #8
00783afc  0d 00 a0 e1                                      mov r0, sp
00783b00  00 20 93 e5                                      ldr r2, [r3]
00783b04  0f e0 a0 e1                                      mov lr, pc
00783b08  08 f0 93 e5                                      ldr pc, [r3, #8]
00783b0c  d0 00 cd e1                                      ldrd r0, r1, [sp]
00783b10  0c d0 8d e2                                      add sp, sp, #0xc
00783b14  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x00783b18, declared_size=16, range_size=16, mode=arm
; class-group: gameswf::stream
; alias: _ZN7gameswf6stream5alignEv
; demangled: gameswf::stream::align()
; decoder-mode: arm
00783b18  00 30 a0 e3                                      mov r3, #0
00783b1c  08 30 c0 e5                                      strb r3, [r0, #8]
00783b20  09 30 c0 e5                                      strb r3, [r0, #9]
00783b24  1e ff 2f e1                                      bx lr

; FUNCTION 0x00783b28, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::stream
; alias: _ZN7gameswf6stream7read_u8Ev
; demangled: gameswf::stream::read_u8()
; decoder-mode: arm
00783b28  10 40 2d e9                                      push {r4, lr}
00783b2c  00 40 a0 e1                                      mov r4, r0
00783b30  08 d0 4d e2                                      sub sp, sp, #8
00783b34  f7 ff ff eb                                      bl #0x783b18
00783b38  04 30 94 e5                                      ldr r3, [r4, #4]
00783b3c  07 00 8d e2                                      add r0, sp, #7
00783b40  01 10 a0 e3                                      mov r1, #1
00783b44  00 20 93 e5                                      ldr r2, [r3]
00783b48  0f e0 a0 e1                                      mov lr, pc
00783b4c  08 f0 93 e5                                      ldr pc, [r3, #8]
00783b50  07 00 dd e5                                      ldrb r0, [sp, #7]
00783b54  08 d0 8d e2                                      add sp, sp, #8
00783b58  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00783b5c, declared_size=132, range_size=132, mode=arm
; class-group: gameswf::stream
; alias: _ZN7gameswf6stream9read_vu32Ev
; demangled: gameswf::stream::read_vu32()
; decoder-mode: arm
00783b5c  70 40 2d e9                                      push {r4, r5, r6, lr}
00783b60  00 40 a0 e1                                      mov r4, r0
00783b64  ef ff ff eb                                      bl #0x783b28
00783b68  80 00 10 e3                                      tst r0, #0x80
00783b6c  00 30 a0 e1                                      mov r3, r0
00783b70  01 00 00 1a                                      bne #0x783b7c
00783b74  03 00 a0 e1                                      mov r0, r3
00783b78  70 80 bd e8                                      pop {r4, r5, r6, pc}
00783b7c  04 00 a0 e1                                      mov r0, r4
00783b80  7f 50 03 e2                                      and r5, r3, #0x7f
00783b84  e7 ff ff eb                                      bl #0x783b28
00783b88  80 33 85 e1                                      orr r3, r5, r0, lsl #7
00783b8c  01 09 13 e3                                      tst r3, #0x4000
00783b90  f7 ff ff 0a                                      beq #0x783b74
00783b94  04 00 a0 e1                                      mov r0, r4
00783b98  03 59 a0 e1                                      lsl r5, r3, #0x12
00783b9c  e1 ff ff eb                                      bl #0x783b28
00783ba0  25 59 a0 e1                                      lsr r5, r5, #0x12
00783ba4  00 37 85 e1                                      orr r3, r5, r0, lsl #14
00783ba8  02 06 13 e3                                      tst r3, #0x200000
00783bac  f0 ff ff 0a                                      beq #0x783b74
00783bb0  ff 34 c3 e3                                      bic r3, r3, #0xff000000
00783bb4  04 00 a0 e1                                      mov r0, r4
00783bb8  0e 56 c3 e3                                      bic r5, r3, #0xe00000
00783bbc  d9 ff ff eb                                      bl #0x783b28
00783bc0  80 3a 85 e1                                      orr r3, r5, r0, lsl #21
00783bc4  01 02 13 e3                                      tst r3, #0x10000000
00783bc8  e9 ff ff 0a                                      beq #0x783b74
00783bcc  04 00 a0 e1                                      mov r0, r4
00783bd0  0f 42 c3 e3                                      bic r4, r3, #0xf0000000
00783bd4  d3 ff ff eb                                      bl #0x783b28
00783bd8  00 3e 84 e1                                      orr r3, r4, r0, lsl #28
00783bdc  e4 ff ff ea                                      b #0x783b74

; FUNCTION 0x00783be0, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::stream
; alias: _ZN7gameswf6stream7read_s8Ev
; demangled: gameswf::stream::read_s8()
; decoder-mode: arm
00783be0  10 40 2d e9                                      push {r4, lr}
00783be4  00 40 a0 e1                                      mov r4, r0
00783be8  08 d0 4d e2                                      sub sp, sp, #8
00783bec  c9 ff ff eb                                      bl #0x783b18
00783bf0  04 30 94 e5                                      ldr r3, [r4, #4]
00783bf4  07 00 8d e2                                      add r0, sp, #7
00783bf8  01 10 a0 e3                                      mov r1, #1
00783bfc  00 20 93 e5                                      ldr r2, [r3]
00783c00  0f e0 a0 e1                                      mov lr, pc
00783c04  08 f0 93 e5                                      ldr pc, [r3, #8]
00783c08  d7 00 dd e1                                      ldrsb r0, [sp, #7]
00783c0c  08 d0 8d e2                                      add sp, sp, #8
00783c10  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00783c14, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::stream
; alias: _ZN7gameswf6stream8read_u16Ev
; demangled: gameswf::stream::read_u16()
; decoder-mode: arm
00783c14  10 40 2d e9                                      push {r4, lr}
00783c18  00 40 a0 e1                                      mov r4, r0
00783c1c  08 d0 4d e2                                      sub sp, sp, #8
00783c20  bc ff ff eb                                      bl #0x783b18
00783c24  04 30 94 e5                                      ldr r3, [r4, #4]
00783c28  06 00 8d e2                                      add r0, sp, #6
00783c2c  02 10 a0 e3                                      mov r1, #2
00783c30  00 20 93 e5                                      ldr r2, [r3]
00783c34  0f e0 a0 e1                                      mov lr, pc
00783c38  08 f0 93 e5                                      ldr pc, [r3, #8]
00783c3c  b6 00 dd e1                                      ldrh r0, [sp, #6]
00783c40  08 d0 8d e2                                      add sp, sp, #8
00783c44  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00783c48, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::stream
; alias: _ZN7gameswf6stream8read_s16Ev
; demangled: gameswf::stream::read_s16()
; decoder-mode: arm
00783c48  10 40 2d e9                                      push {r4, lr}
00783c4c  00 40 a0 e1                                      mov r4, r0
00783c50  08 d0 4d e2                                      sub sp, sp, #8
00783c54  af ff ff eb                                      bl #0x783b18
00783c58  04 30 94 e5                                      ldr r3, [r4, #4]
00783c5c  06 00 8d e2                                      add r0, sp, #6
00783c60  02 10 a0 e3                                      mov r1, #2
00783c64  00 20 93 e5                                      ldr r2, [r3]
00783c68  0f e0 a0 e1                                      mov lr, pc
00783c6c  08 f0 93 e5                                      ldr pc, [r3, #8]
00783c70  f6 00 dd e1                                      ldrsh r0, [sp, #6]
00783c74  08 d0 8d e2                                      add sp, sp, #8
00783c78  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00783c7c, declared_size=24, range_size=24, mode=arm
; class-group: gameswf::stream
; alias: _ZN7gameswf6stream12get_positionEv
; demangled: gameswf::stream::get_position()
; decoder-mode: arm
00783c7c  10 40 2d e9                                      push {r4, lr}
00783c80  04 30 90 e5                                      ldr r3, [r0, #4]
00783c84  00 00 93 e5                                      ldr r0, [r3]
00783c88  0f e0 a0 e1                                      mov lr, pc
00783c8c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00783c90  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00783c94, declared_size=40, range_size=40, mode=arm
; class-group: gameswf::stream
; alias: _ZN7gameswf6stream12set_positionEi
; demangled: gameswf::stream::set_position(int)
; decoder-mode: arm
00783c94  70 40 2d e9                                      push {r4, r5, r6, lr}
00783c98  00 40 a0 e1                                      mov r4, r0
00783c9c  01 50 a0 e1                                      mov r5, r1
00783ca0  9c ff ff eb                                      bl #0x783b18
00783ca4  04 30 94 e5                                      ldr r3, [r4, #4]
00783ca8  05 00 a0 e1                                      mov r0, r5
00783cac  00 10 93 e5                                      ldr r1, [r3]
00783cb0  0f e0 a0 e1                                      mov lr, pc
00783cb4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00783cb8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00783cbc, declared_size=20, range_size=20, mode=arm
; class-group: gameswf::stream
; alias: _ZN7gameswf6stream20get_tag_end_positionEv
; demangled: gameswf::stream::get_tag_end_position()
; decoder-mode: arm
00783cbc  10 20 90 e5                                      ldr r2, [r0, #0x10]
00783cc0  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00783cc4  01 20 42 e2                                      sub r2, r2, #1
00783cc8  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
00783ccc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00783cd0, declared_size=144, range_size=144, mode=arm
; class-group: gameswf::stream
; alias: _ZN7gameswf6stream8open_tagEv
; demangled: gameswf::stream::open_tag()
; decoder-mode: arm
00783cd0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00783cd4  00 40 a0 e1                                      mov r4, r0
00783cd8  0c d0 4d e2                                      sub sp, sp, #0xc
00783cdc  8d ff ff eb                                      bl #0x783b18
00783ce0  04 00 a0 e1                                      mov r0, r4
00783ce4  ca ff ff eb                                      bl #0x783c14
00783ce8  3f 70 00 e2                                      and r7, r0, #0x3f
00783cec  3f 00 57 e3                                      cmp r7, #0x3f
00783cf0  40 53 a0 e1                                      asr r5, r0, #6
00783cf4  11 00 00 0a                                      beq #0x783d40
00783cf8  04 00 a0 e1                                      mov r0, r4
00783cfc  de ff ff eb                                      bl #0x783c7c
00783d00  10 30 94 e5                                      ldr r3, [r4, #0x10]
00783d04  14 20 94 e5                                      ldr r2, [r4, #0x14]
00783d08  07 70 80 e0                                      add r7, r0, r7
00783d0c  01 60 83 e2                                      add r6, r3, #1
00783d10  02 00 56 e1                                      cmp r6, r2
00783d14  03 00 00 da                                      ble #0x783d28
00783d18  0c 00 84 e2                                      add r0, r4, #0xc
00783d1c  c6 10 86 e0                                      add r1, r6, r6, asr #1
00783d20  a6 81 ff eb                                      bl #0x7643c0
00783d24  10 30 94 e5                                      ldr r3, [r4, #0x10]
00783d28  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00783d2c  05 00 a0 e1                                      mov r0, r5
00783d30  03 71 82 e7                                      str r7, [r2, r3, lsl #2]
00783d34  10 60 84 e5                                      str r6, [r4, #0x10]
00783d38  0c d0 8d e2                                      add sp, sp, #0xc
00783d3c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00783d40  04 30 94 e5                                      ldr r3, [r4, #4]
00783d44  04 00 8d e2                                      add r0, sp, #4
00783d48  04 10 a0 e3                                      mov r1, #4
00783d4c  00 20 93 e5                                      ldr r2, [r3]
00783d50  0f e0 a0 e1                                      mov lr, pc
00783d54  08 f0 93 e5                                      ldr pc, [r3, #8]
00783d58  04 70 9d e5                                      ldr r7, [sp, #4]
00783d5c  e5 ff ff ea                                      b #0x783cf8

; FUNCTION 0x00783dd4, declared_size=80, range_size=80, mode=arm
; class-group: gameswf::stream
; alias: _ZN7gameswf6streamC1EPNS_7tu_fileEb
; demangled: gameswf::stream::stream(gameswf::tu_file*, bool)
; decoder-mode: arm
00783dd4  00 30 a0 e3                                      mov r3, #0
00783dd8  10 40 2d e9                                      push {r4, lr}
00783ddc  00 40 a0 e1                                      mov r4, r0
00783de0  04 10 80 e5                                      str r1, [r0, #4]
00783de4  00 20 c0 e5                                      strb r2, [r0]
00783de8  28 30 c0 e5                                      strb r3, [r0, #0x28]
00783dec  08 30 c0 e5                                      strb r3, [r0, #8]
00783df0  09 30 c0 e5                                      strb r3, [r0, #9]
00783df4  0c 30 80 e5                                      str r3, [r0, #0xc]
00783df8  10 30 80 e5                                      str r3, [r0, #0x10]
00783dfc  14 30 80 e5                                      str r3, [r0, #0x14]
00783e00  18 30 c0 e5                                      strb r3, [r0, #0x18]
00783e04  1c 30 80 e5                                      str r3, [r0, #0x1c]
00783e08  20 30 80 e5                                      str r3, [r0, #0x20]
00783e0c  24 30 80 e5                                      str r3, [r0, #0x24]
00783e10  01 1c a0 e3                                      mov r1, #0x100
00783e14  1c 00 80 e2                                      add r0, r0, #0x1c
00783e18  d0 ff ff eb                                      bl #0x783d60
00783e1c  04 00 a0 e1                                      mov r0, r4
00783e20  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00783e24, declared_size=80, range_size=80, mode=arm
; class-group: gameswf::stream
; alias: _ZN7gameswf6streamC2EPNS_7tu_fileEb
; demangled: gameswf::stream::stream(gameswf::tu_file*, bool)
; decoder-mode: arm
00783e24  00 30 a0 e3                                      mov r3, #0
00783e28  10 40 2d e9                                      push {r4, lr}
00783e2c  00 40 a0 e1                                      mov r4, r0
00783e30  04 10 80 e5                                      str r1, [r0, #4]
00783e34  00 20 c0 e5                                      strb r2, [r0]
00783e38  28 30 c0 e5                                      strb r3, [r0, #0x28]
00783e3c  08 30 c0 e5                                      strb r3, [r0, #8]
00783e40  09 30 c0 e5                                      strb r3, [r0, #9]
00783e44  0c 30 80 e5                                      str r3, [r0, #0xc]
00783e48  10 30 80 e5                                      str r3, [r0, #0x10]
00783e4c  14 30 80 e5                                      str r3, [r0, #0x14]
00783e50  18 30 c0 e5                                      strb r3, [r0, #0x18]
00783e54  1c 30 80 e5                                      str r3, [r0, #0x1c]
00783e58  20 30 80 e5                                      str r3, [r0, #0x20]
00783e5c  24 30 80 e5                                      str r3, [r0, #0x24]
00783e60  01 1c a0 e3                                      mov r1, #0x100
00783e64  1c 00 80 e2                                      add r0, r0, #0x1c
00783e68  bc ff ff eb                                      bl #0x783d60
00783e6c  04 00 a0 e1                                      mov r0, r4
00783e70  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00783e74, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::stream
; alias: _ZN7gameswf6stream8read_s32Ev
; demangled: gameswf::stream::read_s32()
; decoder-mode: arm
00783e74  10 40 2d e9                                      push {r4, lr}
00783e78  00 40 a0 e1                                      mov r4, r0
00783e7c  08 d0 4d e2                                      sub sp, sp, #8
00783e80  24 ff ff eb                                      bl #0x783b18
00783e84  04 30 94 e5                                      ldr r3, [r4, #4]
00783e88  04 00 8d e2                                      add r0, sp, #4
00783e8c  04 10 a0 e3                                      mov r1, #4
00783e90  00 20 93 e5                                      ldr r2, [r3]
00783e94  0f e0 a0 e1                                      mov lr, pc
00783e98  08 f0 93 e5                                      ldr pc, [r3, #8]
00783e9c  04 00 9d e5                                      ldr r0, [sp, #4]
00783ea0  08 d0 8d e2                                      add sp, sp, #8
00783ea4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00783ea8, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::stream
; alias: _ZN7gameswf6stream10read_fixedEv
; demangled: gameswf::stream::read_fixed()
; decoder-mode: arm
00783ea8  04 e0 2d e5                                      str lr, [sp, #-4]!
00783eac  04 30 90 e5                                      ldr r3, [r0, #4]
00783eb0  00 20 a0 e3                                      mov r2, #0
00783eb4  0c d0 4d e2                                      sub sp, sp, #0xc
00783eb8  04 10 a0 e3                                      mov r1, #4
00783ebc  09 20 c0 e5                                      strb r2, [r0, #9]
00783ec0  00 20 93 e5                                      ldr r2, [r3]
00783ec4  01 00 8d e0                                      add r0, sp, r1
00783ec8  0f e0 a0 e1                                      mov lr, pc
00783ecc  08 f0 93 e5                                      ldr pc, [r3, #8]
00783ed0  04 00 9d e5                                      ldr r0, [sp, #4]
00783ed4  a2 2a ee eb                                      bl #0x30e964
00783ed8  de 15 a0 e3                                      mov r1, #0x37800000
00783edc  a2 2b ee eb                                      bl #0x30ed6c
00783ee0  0c d0 8d e2                                      add sp, sp, #0xc
00783ee4  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x00783ee8, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::stream
; alias: _ZN7gameswf6stream10read_floatEv
; demangled: gameswf::stream::read_float()
; decoder-mode: arm
00783ee8  04 e0 2d e5                                      str lr, [sp, #-4]!
00783eec  04 30 90 e5                                      ldr r3, [r0, #4]
00783ef0  00 20 a0 e3                                      mov r2, #0
00783ef4  0c d0 4d e2                                      sub sp, sp, #0xc
00783ef8  09 20 c0 e5                                      strb r2, [r0, #9]
00783efc  04 10 a0 e3                                      mov r1, #4
00783f00  04 00 8d e2                                      add r0, sp, #4
00783f04  00 20 93 e5                                      ldr r2, [r3]
00783f08  0f e0 a0 e1                                      mov lr, pc
00783f0c  08 f0 93 e5                                      ldr pc, [r3, #8]
00783f10  04 00 9d e5                                      ldr r0, [sp, #4]
00783f14  0c d0 8d e2                                      add sp, sp, #0xc
00783f18  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x00783f1c, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::stream
; alias: _ZN7gameswf6stream8read_u32Ev
; demangled: gameswf::stream::read_u32()
; decoder-mode: arm
00783f1c  10 40 2d e9                                      push {r4, lr}
00783f20  00 40 a0 e1                                      mov r4, r0
00783f24  08 d0 4d e2                                      sub sp, sp, #8
00783f28  fa fe ff eb                                      bl #0x783b18
00783f2c  04 30 94 e5                                      ldr r3, [r4, #4]
00783f30  04 00 8d e2                                      add r0, sp, #4
00783f34  04 10 a0 e3                                      mov r1, #4
00783f38  00 20 93 e5                                      ldr r2, [r3]
00783f3c  0f e0 a0 e1                                      mov lr, pc
00783f40  08 f0 93 e5                                      ldr pc, [r3, #8]
00783f44  04 00 9d e5                                      ldr r0, [sp, #4]
00783f48  08 d0 8d e2                                      add sp, sp, #8
00783f4c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00783f50, declared_size=224, range_size=224, mode=arm
; class-group: gameswf::stream
; alias: _ZN7gameswf6stream23read_string_with_lengthEPNS_9tu_stringE
; demangled: gameswf::stream::read_string_with_length(gameswf::tu_string*)
; decoder-mode: arm
00783f50  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00783f54  00 40 a0 e1                                      mov r4, r0
00783f58  01 90 a0 e1                                      mov sb, r1
00783f5c  ed fe ff eb                                      bl #0x783b18
00783f60  20 30 94 e5                                      ldr r3, [r4, #0x20]
00783f64  00 00 53 e3                                      cmp r3, #0
00783f68  29 00 00 da                                      ble #0x784014
00783f6c  00 60 a0 e3                                      mov r6, #0
00783f70  20 60 84 e5                                      str r6, [r4, #0x20]
00783f74  04 00 a0 e1                                      mov r0, r4
00783f78  ea fe ff eb                                      bl #0x783b28
00783f7c  00 80 50 e2                                      subs r8, r0, #0
00783f80  20 50 94 05                                      ldreq r5, [r4, #0x20]
00783f84  12 00 00 0a                                      beq #0x783fd4
00783f88  1c a0 84 e2                                      add sl, r4, #0x1c
00783f8c  04 00 a0 e1                                      mov r0, r4
00783f90  e4 fe ff eb                                      bl #0x783b28
00783f94  20 30 94 e5                                      ldr r3, [r4, #0x20]
00783f98  24 20 94 e5                                      ldr r2, [r4, #0x24]
00783f9c  00 70 a0 e1                                      mov r7, r0
00783fa0  01 50 83 e2                                      add r5, r3, #1
00783fa4  02 00 55 e1                                      cmp r5, r2
00783fa8  01 60 86 e2                                      add r6, r6, #1
00783fac  03 00 00 da                                      ble #0x783fc0
00783fb0  0a 00 a0 e1                                      mov r0, sl
00783fb4  c5 10 85 e0                                      add r1, r5, r5, asr #1
00783fb8  68 ff ff eb                                      bl #0x783d60
00783fbc  20 30 94 e5                                      ldr r3, [r4, #0x20]
00783fc0  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
00783fc4  06 00 58 e1                                      cmp r8, r6
00783fc8  03 70 c2 e7                                      strb r7, [r2, r3]
00783fcc  20 50 84 e5                                      str r5, [r4, #0x20]
00783fd0  ed ff ff ca                                      bgt #0x783f8c
00783fd4  24 30 94 e5                                      ldr r3, [r4, #0x24]
00783fd8  01 60 85 e2                                      add r6, r5, #1
00783fdc  03 00 56 e1                                      cmp r6, r3
00783fe0  03 00 00 da                                      ble #0x783ff4
00783fe4  1c 00 84 e2                                      add r0, r4, #0x1c
00783fe8  c6 10 86 e0                                      add r1, r6, r6, asr #1
00783fec  5b ff ff eb                                      bl #0x783d60
00783ff0  20 50 94 e5                                      ldr r5, [r4, #0x20]
00783ff4  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00783ff8  00 20 a0 e3                                      mov r2, #0
00783ffc  09 00 a0 e1                                      mov r0, sb
00784000  05 20 c3 e7                                      strb r2, [r3, r5]
00784004  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00784008  20 60 84 e5                                      str r6, [r4, #0x20]
0078400c  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
00784010  00 a2 ff ea                                      b #0x76c818
00784014  d4 ff ff aa                                      bge #0x783f6c
00784018  00 10 a0 e3                                      mov r1, #0
0078401c  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
00784020  03 10 c2 e7                                      strb r1, [r2, r3]
00784024  01 30 93 e2                                      adds r3, r3, #1
00784028  fb ff ff 1a                                      bne #0x78401c
0078402c  ce ff ff ea                                      b #0x783f6c

; FUNCTION 0x00784030, declared_size=152, range_size=152, mode=arm
; class-group: gameswf::stream
; alias: _ZN7gameswf6streamD1Ev
; demangled: gameswf::stream::~stream()
; decoder-mode: arm
00784030  70 40 2d e9                                      push {r4, r5, r6, lr}
00784034  20 30 90 e5                                      ldr r3, [r0, #0x20]
00784038  00 40 a0 e1                                      mov r4, r0
0078403c  1c 00 80 e2                                      add r0, r0, #0x1c
00784040  00 00 53 e3                                      cmp r3, #0
00784044  0c 00 00 da                                      ble #0x78407c
00784048  00 50 a0 e3                                      mov r5, #0
0078404c  20 50 84 e5                                      str r5, [r4, #0x20]
00784050  05 10 a0 e1                                      mov r1, r5
00784054  41 ff ff eb                                      bl #0x783d60
00784058  10 30 94 e5                                      ldr r3, [r4, #0x10]
0078405c  0c 00 84 e2                                      add r0, r4, #0xc
00784060  05 00 53 e1                                      cmp r3, r5
00784064  0b 00 00 da                                      ble #0x784098
00784068  00 10 a0 e3                                      mov r1, #0
0078406c  10 10 84 e5                                      str r1, [r4, #0x10]
00784070  d2 80 ff eb                                      bl #0x7643c0
00784074  04 00 a0 e1                                      mov r0, r4
00784078  70 80 bd e8                                      pop {r4, r5, r6, pc}
0078407c  f1 ff ff aa                                      bge #0x784048
00784080  00 10 a0 e3                                      mov r1, #0
00784084  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
00784088  03 10 c2 e7                                      strb r1, [r2, r3]
0078408c  01 30 93 e2                                      adds r3, r3, #1
00784090  fb ff ff 1a                                      bne #0x784084
00784094  eb ff ff ea                                      b #0x784048
00784098  f2 ff ff aa                                      bge #0x784068
0078409c  03 21 a0 e1                                      lsl r2, r3, #2
007840a0  00 10 90 e5                                      ldr r1, [r0]
007840a4  01 30 93 e2                                      adds r3, r3, #1
007840a8  02 50 81 e7                                      str r5, [r1, r2]
007840ac  04 20 82 e2                                      add r2, r2, #4
007840b0  fa ff ff 1a                                      bne #0x7840a0
007840b4  00 10 a0 e3                                      mov r1, #0
007840b8  10 10 84 e5                                      str r1, [r4, #0x10]
007840bc  bf 80 ff eb                                      bl #0x7643c0
007840c0  04 00 a0 e1                                      mov r0, r4
007840c4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007840c8, declared_size=152, range_size=152, mode=arm
; class-group: gameswf::stream
; alias: _ZN7gameswf6streamD2Ev
; demangled: gameswf::stream::~stream()
; decoder-mode: arm
007840c8  70 40 2d e9                                      push {r4, r5, r6, lr}
007840cc  20 30 90 e5                                      ldr r3, [r0, #0x20]
007840d0  00 40 a0 e1                                      mov r4, r0
007840d4  1c 00 80 e2                                      add r0, r0, #0x1c
007840d8  00 00 53 e3                                      cmp r3, #0
007840dc  0c 00 00 da                                      ble #0x784114
007840e0  00 50 a0 e3                                      mov r5, #0
007840e4  20 50 84 e5                                      str r5, [r4, #0x20]
007840e8  05 10 a0 e1                                      mov r1, r5
007840ec  1b ff ff eb                                      bl #0x783d60
007840f0  10 30 94 e5                                      ldr r3, [r4, #0x10]
007840f4  0c 00 84 e2                                      add r0, r4, #0xc
007840f8  05 00 53 e1                                      cmp r3, r5
007840fc  0b 00 00 da                                      ble #0x784130
00784100  00 10 a0 e3                                      mov r1, #0
00784104  10 10 84 e5                                      str r1, [r4, #0x10]
00784108  ac 80 ff eb                                      bl #0x7643c0
0078410c  04 00 a0 e1                                      mov r0, r4
00784110  70 80 bd e8                                      pop {r4, r5, r6, pc}
00784114  f1 ff ff aa                                      bge #0x7840e0
00784118  00 10 a0 e3                                      mov r1, #0
0078411c  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
00784120  03 10 c2 e7                                      strb r1, [r2, r3]
00784124  01 30 93 e2                                      adds r3, r3, #1
00784128  fb ff ff 1a                                      bne #0x78411c
0078412c  eb ff ff ea                                      b #0x7840e0
00784130  f2 ff ff aa                                      bge #0x784100
00784134  03 21 a0 e1                                      lsl r2, r3, #2
00784138  00 10 90 e5                                      ldr r1, [r0]
0078413c  01 30 93 e2                                      adds r3, r3, #1
00784140  02 50 81 e7                                      str r5, [r1, r2]
00784144  04 20 82 e2                                      add r2, r2, #4
00784148  fa ff ff 1a                                      bne #0x784138
0078414c  00 10 a0 e3                                      mov r1, #0
00784150  10 10 84 e5                                      str r1, [r4, #0x10]
00784154  99 80 ff eb                                      bl #0x7643c0
00784158  04 00 a0 e1                                      mov r0, r4
0078415c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00784160, declared_size=104, range_size=104, mode=arm
; class-group: gameswf::stream
; alias: _ZN7gameswf6stream9close_tagEv
; demangled: gameswf::stream::close_tag()
; decoder-mode: arm
00784160  70 40 2d e9                                      push {r4, r5, r6, lr}
00784164  10 50 90 e5                                      ldr r5, [r0, #0x10]
00784168  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0078416c  00 40 a0 e1                                      mov r4, r0
00784170  01 50 45 e2                                      sub r5, r5, #1
00784174  00 00 55 e3                                      cmp r5, #0
00784178  05 61 93 e7                                      ldr r6, [r3, r5, lsl #2]
0078417c  02 00 00 0a                                      beq #0x78418c
00784180  14 30 90 e5                                      ldr r3, [r0, #0x14]
00784184  03 00 55 e1                                      cmp r5, r3
00784188  0a 00 00 ca                                      bgt #0x7841b8
0078418c  10 50 84 e5                                      str r5, [r4, #0x10]
00784190  04 00 a0 e1                                      mov r0, r4
00784194  b8 fe ff eb                                      bl #0x783c7c
00784198  04 30 94 e5                                      ldr r3, [r4, #4]
0078419c  06 00 a0 e1                                      mov r0, r6
007841a0  00 10 93 e5                                      ldr r1, [r3]
007841a4  0f e0 a0 e1                                      mov lr, pc
007841a8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
007841ac  00 30 a0 e3                                      mov r3, #0
007841b0  09 30 c4 e5                                      strb r3, [r4, #9]
007841b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
007841b8  0c 00 80 e2                                      add r0, r0, #0xc
007841bc  c5 10 85 e0                                      add r1, r5, r5, asr #1
007841c0  7e 80 ff eb                                      bl #0x7643c0
007841c4  f0 ff ff ea                                      b #0x78418c

; FUNCTION 0x007841c8, declared_size=204, range_size=204, mode=arm
; class-group: gameswf::stream
; alias: _ZN7gameswf6stream11read_stringEPNS_9tu_stringE
; demangled: gameswf::stream::read_string(gameswf::tu_string*)
; decoder-mode: arm
007841c8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007841cc  00 40 a0 e1                                      mov r4, r0
007841d0  01 80 a0 e1                                      mov r8, r1
007841d4  4f fe ff eb                                      bl #0x783b18
007841d8  20 30 94 e5                                      ldr r3, [r4, #0x20]
007841dc  00 00 53 e3                                      cmp r3, #0
007841e0  24 00 00 da                                      ble #0x784278
007841e4  00 30 a0 e3                                      mov r3, #0
007841e8  20 30 84 e5                                      str r3, [r4, #0x20]
007841ec  1c 70 84 e2                                      add r7, r4, #0x1c
007841f0  0b 00 00 ea                                      b #0x784224
007841f4  20 30 94 e5                                      ldr r3, [r4, #0x20]
007841f8  24 20 94 e5                                      ldr r2, [r4, #0x24]
007841fc  01 50 83 e2                                      add r5, r3, #1
00784200  02 00 55 e1                                      cmp r5, r2
00784204  03 00 00 da                                      ble #0x784218
00784208  07 00 a0 e1                                      mov r0, r7
0078420c  c5 10 85 e0                                      add r1, r5, r5, asr #1
00784210  d2 fe ff eb                                      bl #0x783d60
00784214  20 30 94 e5                                      ldr r3, [r4, #0x20]
00784218  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0078421c  03 60 c2 e7                                      strb r6, [r2, r3]
00784220  20 50 84 e5                                      str r5, [r4, #0x20]
00784224  04 00 a0 e1                                      mov r0, r4
00784228  3e fe ff eb                                      bl #0x783b28
0078422c  00 60 50 e2                                      subs r6, r0, #0
00784230  ef ff ff 1a                                      bne #0x7841f4
00784234  20 30 94 e5                                      ldr r3, [r4, #0x20]
00784238  24 20 94 e5                                      ldr r2, [r4, #0x24]
0078423c  01 50 83 e2                                      add r5, r3, #1
00784240  02 00 55 e1                                      cmp r5, r2
00784244  03 00 00 da                                      ble #0x784258
00784248  07 00 a0 e1                                      mov r0, r7
0078424c  c5 10 85 e0                                      add r1, r5, r5, asr #1
00784250  c2 fe ff eb                                      bl #0x783d60
00784254  20 30 94 e5                                      ldr r3, [r4, #0x20]
00784258  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0078425c  00 10 a0 e3                                      mov r1, #0
00784260  08 00 a0 e1                                      mov r0, r8
00784264  03 10 c2 e7                                      strb r1, [r2, r3]
00784268  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
0078426c  20 50 84 e5                                      str r5, [r4, #0x20]
00784270  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00784274  67 a1 ff ea                                      b #0x76c818
00784278  d9 ff ff aa                                      bge #0x7841e4
0078427c  00 10 a0 e3                                      mov r1, #0
00784280  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
00784284  03 10 c2 e7                                      strb r1, [r2, r3]
00784288  01 30 93 e2                                      adds r3, r3, #1
0078428c  fb ff ff 1a                                      bne #0x784280
00784290  d3 ff ff ea                                      b #0x7841e4

; FUNCTION 0x00784294, declared_size=220, range_size=220, mode=arm
; class-group: gameswf::stream
; alias: _ZN7gameswf6stream23read_string_with_lengthEiPNS_9tu_stringE
; demangled: gameswf::stream::read_string_with_length(int, gameswf::tu_string*)
; decoder-mode: arm
00784294  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00784298  20 30 90 e5                                      ldr r3, [r0, #0x20]
0078429c  00 40 a0 e1                                      mov r4, r0
007842a0  01 50 a0 e1                                      mov r5, r1
007842a4  00 00 53 e3                                      cmp r3, #0
007842a8  02 90 a0 e1                                      mov sb, r2
007842ac  28 00 00 da                                      ble #0x784354
007842b0  00 00 55 e3                                      cmp r5, #0
007842b4  00 70 a0 e3                                      mov r7, #0
007842b8  20 70 84 e5                                      str r7, [r4, #0x20]
007842bc  07 60 a0 d1                                      movle r6, r7
007842c0  01 50 a0 d3                                      movle r5, #1
007842c4  13 00 00 da                                      ble #0x784318
007842c8  1c a0 84 e2                                      add sl, r4, #0x1c
007842cc  04 00 a0 e1                                      mov r0, r4
007842d0  14 fe ff eb                                      bl #0x783b28
007842d4  20 30 94 e5                                      ldr r3, [r4, #0x20]
007842d8  24 20 94 e5                                      ldr r2, [r4, #0x24]
007842dc  00 80 a0 e1                                      mov r8, r0
007842e0  01 60 83 e2                                      add r6, r3, #1
007842e4  02 00 56 e1                                      cmp r6, r2
007842e8  01 70 87 e2                                      add r7, r7, #1
007842ec  03 00 00 da                                      ble #0x784300
007842f0  0a 00 a0 e1                                      mov r0, sl
007842f4  c6 10 86 e0                                      add r1, r6, r6, asr #1
007842f8  98 fe ff eb                                      bl #0x783d60
007842fc  20 30 94 e5                                      ldr r3, [r4, #0x20]
00784300  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
00784304  05 00 57 e1                                      cmp r7, r5
00784308  03 80 c2 e7                                      strb r8, [r2, r3]
0078430c  20 60 84 e5                                      str r6, [r4, #0x20]
00784310  ed ff ff 1a                                      bne #0x7842cc
00784314  01 50 86 e2                                      add r5, r6, #1
00784318  24 30 94 e5                                      ldr r3, [r4, #0x24]
0078431c  05 00 53 e1                                      cmp r3, r5
00784320  03 00 00 aa                                      bge #0x784334
00784324  1c 00 84 e2                                      add r0, r4, #0x1c
00784328  c5 10 85 e0                                      add r1, r5, r5, asr #1
0078432c  8b fe ff eb                                      bl #0x783d60
00784330  20 60 94 e5                                      ldr r6, [r4, #0x20]
00784334  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00784338  00 20 a0 e3                                      mov r2, #0
0078433c  09 00 a0 e1                                      mov r0, sb
00784340  06 20 c3 e7                                      strb r2, [r3, r6]
00784344  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00784348  20 50 84 e5                                      str r5, [r4, #0x20]
0078434c  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
00784350  30 a1 ff ea                                      b #0x76c818
00784354  d5 ff ff aa                                      bge #0x7842b0
00784358  00 10 a0 e3                                      mov r1, #0
0078435c  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
00784360  03 10 c2 e7                                      strb r1, [r2, r3]
00784364  01 30 93 e2                                      adds r3, r3, #1
00784368  fb ff ff 1a                                      bne #0x78435c
0078436c  cf ff ff ea                                      b #0x7842b0
