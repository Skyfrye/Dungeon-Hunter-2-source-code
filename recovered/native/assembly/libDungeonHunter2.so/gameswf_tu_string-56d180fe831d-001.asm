; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00413a7c, declared_size=112, range_size=112, mode=arm
; class-group: gameswf::tu_string
; alias: _ZN7gameswf9tu_stringC1EPKc
; demangled: gameswf::tu_string::tu_string(char const*)
; decoder-mode: arm
00413a7c  01 30 a0 e3                                      mov r3, #1
00413a80  70 40 2d e9                                      push {r4, r5, r6, lr}
00413a84  00 30 c0 e5                                      strb r3, [r0]
00413a88  00 50 51 e2                                      subs r5, r1, #0
00413a8c  00 30 a0 e3                                      mov r3, #0
00413a90  00 40 a0 e1                                      mov r4, r0
00413a94  01 30 c0 e5                                      strb r3, [r0, #1]
00413a98  0a 00 00 0a                                      beq #0x413ac8
00413a9c  05 00 a0 e1                                      mov r0, r5
00413aa0  eb e8 fb eb                                      bl #0x30de54
00413aa4  00 10 a0 e1                                      mov r1, r0
00413aa8  04 00 a0 e1                                      mov r0, r4
00413aac  98 f8 0c eb                                      bl #0x751d14
00413ab0  d0 30 d4 e1                                      ldrsb r3, [r4]
00413ab4  05 10 a0 e1                                      mov r1, r5
00413ab8  01 00 73 e3                                      cmn r3, #1
00413abc  01 00 84 12                                      addne r0, r4, #1
00413ac0  0c 00 94 05                                      ldreq r0, [r4, #0xc]
00413ac4  95 ea fb eb                                      bl #0x30e520
00413ac8  10 30 94 e5                                      ldr r3, [r4, #0x10]
00413acc  00 20 e0 e3                                      mvn r2, #0
00413ad0  04 00 a0 e1                                      mov r0, r4
00413ad4  12 30 d7 e7                                      bfi r3, r2, #0, #0x18
00413ad8  23 2c a0 e1                                      lsr r2, r3, #0x18
00413adc  1f 20 c0 e7                                      bfc r2, #0, #1
00413ae0  10 30 84 e5                                      str r3, [r4, #0x10]
00413ae4  13 20 c4 e5                                      strb r2, [r4, #0x13]
00413ae8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0041ddec, declared_size=104, range_size=104, mode=arm
; class-group: gameswf::tu_string
; alias: _ZN7gameswf9tu_stringC1EPKc.clone.1
; demangled: gameswf::tu_string::tu_string(char const*) [clone .clone.1]
; decoder-mode: arm
0041ddec  01 30 a0 e3                                      mov r3, #1
0041ddf0  10 40 2d e9                                      push {r4, lr}
0041ddf4  00 30 c0 e5                                      strb r3, [r0]
0041ddf8  00 30 a0 e3                                      mov r3, #0
0041ddfc  00 40 a0 e1                                      mov r4, r0
0041de00  01 30 c0 e5                                      strb r3, [r0, #1]
0041de04  06 10 a0 e3                                      mov r1, #6
0041de08  c1 cf 0c eb                                      bl #0x751d14
0041de0c  d0 30 d4 e1                                      ldrsb r3, [r4]
0041de10  38 10 9f e5                                      ldr r1, [pc, #0x38]
0041de14  07 20 a0 e3                                      mov r2, #7
0041de18  01 00 73 e3                                      cmn r3, #1
0041de1c  01 00 84 12                                      addne r0, r4, #1
0041de20  0c 00 94 05                                      ldreq r0, [r4, #0xc]
0041de24  01 10 8f e0                                      add r1, pc, r1
0041de28  8e c2 fb eb                                      bl #0x30e868
0041de2c  10 30 94 e5                                      ldr r3, [r4, #0x10]
0041de30  00 20 e0 e3                                      mvn r2, #0
0041de34  04 00 a0 e1                                      mov r0, r4
0041de38  12 30 d7 e7                                      bfi r3, r2, #0, #0x18
0041de3c  23 2c a0 e1                                      lsr r2, r3, #0x18
0041de40  1f 20 c0 e7                                      bfc r2, #0, #1
0041de44  10 30 84 e5                                      str r3, [r4, #0x10]
0041de48  13 20 c4 e5                                      strb r2, [r4, #0x13]
0041de4c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0041de50  34 b0 4a 00                                      .byte 0x34, 0xb0, 0x4a, 0x00

; FUNCTION 0x0041fed8, declared_size=48, range_size=48, mode=arm
; class-group: gameswf::tu_string
; alias: _ZN7gameswf9tu_stringD1Ev
; demangled: gameswf::tu_string::~tu_string()
; decoder-mode: arm
0041fed8  10 40 2d e9                                      push {r4, lr}
0041fedc  d0 30 d0 e1                                      ldrsb r3, [r0]
0041fee0  00 40 a0 e1                                      mov r4, r0
0041fee4  01 00 73 e3                                      cmn r3, #1
0041fee8  01 00 00 0a                                      beq #0x41fef4
0041feec  04 00 a0 e1                                      mov r0, r4
0041fef0  10 80 bd e8                                      pop {r4, pc}
0041fef4  0c 00 90 e5                                      ldr r0, [r0, #0xc]
0041fef8  08 10 94 e5                                      ldr r1, [r4, #8]
0041fefc  0d cb 0c eb                                      bl #0x752b38
0041ff00  04 00 a0 e1                                      mov r0, r4
0041ff04  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00751c74, declared_size=88, range_size=88, mode=arm
; class-group: gameswf::tu_string
; alias: _ZN7gameswf9tu_string15utf8_char_countEPKci
; demangled: gameswf::tu_string::utf8_char_count(char const*, int)
; decoder-mode: arm
00751c74  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00751c78  00 70 51 e2                                      subs r7, r1, #0
00751c7c  0c d0 4d e2                                      sub sp, sp, #0xc
00751c80  00 60 a0 e1                                      mov r6, r0
00751c84  00 40 a0 d3                                      movle r4, #0
00751c88  0c 00 00 da                                      ble #0x751cc0
00751c8c  08 50 8d e2                                      add r5, sp, #8
00751c90  04 00 25 e5                                      str r0, [r5, #-4]!
00751c94  00 40 a0 e3                                      mov r4, #0
00751c98  04 00 00 ea                                      b #0x751cb0
00751c9c  04 30 9d e5                                      ldr r3, [sp, #4]
00751ca0  01 40 84 e2                                      add r4, r4, #1
00751ca4  03 30 66 e0                                      rsb r3, r6, r3
00751ca8  07 00 53 e1                                      cmp r3, r7
00751cac  03 00 00 aa                                      bge #0x751cc0
00751cb0  05 00 a0 e1                                      mov r0, r5
00751cb4  f6 01 00 eb                                      bl #0x752494
00751cb8  00 00 50 e3                                      cmp r0, #0
00751cbc  f6 ff ff 1a                                      bne #0x751c9c
00751cc0  04 00 a0 e1                                      mov r0, r4
00751cc4  0c d0 8d e2                                      add sp, sp, #0xc
00751cc8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00751ccc, declared_size=68, range_size=68, mode=arm
; class-group: gameswf::tu_string
; alias: _ZNK7gameswf9tu_string12utf8_char_atEi
; demangled: gameswf::tu_string::utf8_char_at(int) const
; decoder-mode: arm
00751ccc  30 40 2d e9                                      push {r4, r5, lr}
00751cd0  d0 30 d0 e1                                      ldrsb r3, [r0]
00751cd4  0c d0 4d e2                                      sub sp, sp, #0xc
00751cd8  08 50 8d e2                                      add r5, sp, #8
00751cdc  01 00 73 e3                                      cmn r3, #1
00751ce0  0c 00 90 05                                      ldreq r0, [r0, #0xc]
00751ce4  01 00 80 12                                      addne r0, r0, #1
00751ce8  01 40 a0 e1                                      mov r4, r1
00751cec  04 00 25 e5                                      str r0, [r5, #-4]!
00751cf0  05 00 a0 e1                                      mov r0, r5
00751cf4  e6 01 00 eb                                      bl #0x752494
00751cf8  00 00 50 e3                                      cmp r0, #0
00751cfc  01 00 00 0a                                      beq #0x751d08
00751d00  01 40 54 e2                                      subs r4, r4, #1
00751d04  f9 ff ff 5a                                      bpl #0x751cf0
00751d08  0c d0 8d e2                                      add sp, sp, #0xc
00751d0c  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00751d10, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::tu_string
; alias: _ZN7gameswf9tu_string7stricmpEPKcS2_
; demangled: gameswf::tu_string::stricmp(char const*, char const*)
; decoder-mode: arm
00751d10  74 f2 ee ea                                      b #0x30e6e8

; FUNCTION 0x00751d14, declared_size=284, range_size=284, mode=arm
; class-group: gameswf::tu_string
; alias: _ZN7gameswf9tu_string6resizeEi
; demangled: gameswf::tu_string::resize(int)
; decoder-mode: arm
00751d14  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00751d18  d0 30 d0 e1                                      ldrsb r3, [r0]
00751d1c  00 40 a0 e1                                      mov r4, r0
00751d20  01 50 a0 e1                                      mov r5, r1
00751d24  01 00 73 e3                                      cmn r3, #1
00751d28  04 20 90 05                                      ldreq r2, [r0, #4]
00751d2c  03 20 a0 11                                      movne r2, r3
00751d30  01 20 42 e2                                      sub r2, r2, #1
00751d34  02 00 51 e1                                      cmp r1, r2
00751d38  1a 00 00 0a                                      beq #0x751da8
00751d3c  01 00 73 e3                                      cmn r3, #1
00751d40  06 00 00 0a                                      beq #0x751d60
00751d44  0e 00 51 e3                                      cmp r1, #0xe
00751d48  17 00 00 ca                                      bgt #0x751dac
00751d4c  01 30 81 e2                                      add r3, r1, #1
00751d50  05 30 c4 e6                                      strb r3, [r4], r5
00751d54  00 30 a0 e3                                      mov r3, #0
00751d58  01 30 c4 e5                                      strb r3, [r4, #1]
00751d5c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00751d60  0e 00 51 e3                                      cmp r1, #0xe
00751d64  23 00 00 da                                      ble #0x751df8
00751d68  08 20 90 e5                                      ldr r2, [r0, #8]
00751d6c  10 60 81 e2                                      add r6, r1, #0x10
00751d70  0f 60 c6 e3                                      bic r6, r6, #0xf
00751d74  06 00 52 e1                                      cmp r2, r6
00751d78  01 70 81 e2                                      add r7, r1, #1
00751d7c  05 00 00 0a                                      beq #0x751d98
00751d80  0c 00 90 e5                                      ldr r0, [r0, #0xc]
00751d84  06 10 a0 e1                                      mov r1, r6
00751d88  00 30 a0 e3                                      mov r3, #0
00751d8c  86 03 00 eb                                      bl #0x752bac
00751d90  08 60 84 e5                                      str r6, [r4, #8]
00751d94  0c 00 84 e5                                      str r0, [r4, #0xc]
00751d98  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00751d9c  00 20 a0 e3                                      mov r2, #0
00751da0  04 70 84 e5                                      str r7, [r4, #4]
00751da4  05 20 c3 e7                                      strb r2, [r3, r5]
00751da8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00751dac  10 60 81 e2                                      add r6, r1, #0x10
00751db0  0f 60 c6 e3                                      bic r6, r6, #0xf
00751db4  00 10 a0 e3                                      mov r1, #0
00751db8  06 00 a0 e1                                      mov r0, r6
00751dbc  76 03 00 eb                                      bl #0x752b9c
00751dc0  00 10 a0 e3                                      mov r1, #0
00751dc4  00 70 a0 e1                                      mov r7, r0
00751dc8  06 20 a0 e1                                      mov r2, r6
00751dcc  a3 f1 ee eb                                      bl #0x30e460
00751dd0  07 00 a0 e1                                      mov r0, r7
00751dd4  01 10 84 e2                                      add r1, r4, #1
00751dd8  d0 f1 ee eb                                      bl #0x30e520
00751ddc  01 50 85 e2                                      add r5, r5, #1
00751de0  00 30 e0 e3                                      mvn r3, #0
00751de4  08 60 84 e5                                      str r6, [r4, #8]
00751de8  0c 70 84 e5                                      str r7, [r4, #0xc]
00751dec  00 30 c4 e5                                      strb r3, [r4]
00751df0  04 50 84 e5                                      str r5, [r4, #4]
00751df4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00751df8  0c 60 90 e5                                      ldr r6, [r0, #0xc]
00751dfc  01 30 81 e2                                      add r3, r1, #1
00751e00  08 70 94 e5                                      ldr r7, [r4, #8]
00751e04  06 10 a0 e1                                      mov r1, r6
00751e08  01 30 c0 e4                                      strb r3, [r0], #1
00751e0c  0f 20 a0 e3                                      mov r2, #0xf
00751e10  03 f0 ee eb                                      bl #0x30de24
00751e14  05 40 84 e0                                      add r4, r4, r5
00751e18  00 30 a0 e3                                      mov r3, #0
00751e1c  06 00 a0 e1                                      mov r0, r6
00751e20  07 10 a0 e1                                      mov r1, r7
00751e24  01 30 c4 e5                                      strb r3, [r4, #1]
00751e28  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00751e2c  41 03 00 ea                                      b #0x752b38

; FUNCTION 0x00751eb4, declared_size=132, range_size=132, mode=arm
; class-group: gameswf::tu_string
; alias: _ZN7gameswf9tu_stringC1EPKci
; demangled: gameswf::tu_string::tu_string(char const*, int)
; decoder-mode: arm
00751eb4  01 30 a0 e3                                      mov r3, #1
00751eb8  70 40 2d e9                                      push {r4, r5, r6, lr}
00751ebc  00 30 c0 e5                                      strb r3, [r0]
00751ec0  00 60 51 e2                                      subs r6, r1, #0
00751ec4  00 30 a0 e3                                      mov r3, #0
00751ec8  00 40 a0 e1                                      mov r4, r0
00751ecc  01 30 c0 e5                                      strb r3, [r0, #1]
00751ed0  02 50 a0 e1                                      mov r5, r2
00751ed4  0e 00 00 0a                                      beq #0x751f14
00751ed8  02 10 a0 e1                                      mov r1, r2
00751edc  8c ff ff eb                                      bl #0x751d14
00751ee0  d0 30 d4 e1                                      ldrsb r3, [r4]
00751ee4  05 20 a0 e1                                      mov r2, r5
00751ee8  06 10 a0 e1                                      mov r1, r6
00751eec  01 00 73 e3                                      cmn r3, #1
00751ef0  01 00 84 12                                      addne r0, r4, #1
00751ef4  0c 00 94 05                                      ldreq r0, [r4, #0xc]
00751ef8  5a f2 ee eb                                      bl #0x30e868
00751efc  d0 30 d4 e1                                      ldrsb r3, [r4]
00751f00  01 00 73 e3                                      cmn r3, #1
00751f04  0c 20 94 05                                      ldreq r2, [r4, #0xc]
00751f08  01 20 84 12                                      addne r2, r4, #1
00751f0c  00 30 a0 e3                                      mov r3, #0
00751f10  05 30 c2 e7                                      strb r3, [r2, r5]
00751f14  10 30 94 e5                                      ldr r3, [r4, #0x10]
00751f18  00 20 e0 e3                                      mvn r2, #0
00751f1c  04 00 a0 e1                                      mov r0, r4
00751f20  12 30 d7 e7                                      bfi r3, r2, #0, #0x18
00751f24  23 2c a0 e1                                      lsr r2, r3, #0x18
00751f28  1f 20 c0 e7                                      bfc r2, #0, #1
00751f2c  10 30 84 e5                                      str r3, [r4, #0x10]
00751f30  13 20 c4 e5                                      strb r2, [r4, #0x13]
00751f34  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00751f38, declared_size=196, range_size=196, mode=arm
; class-group: gameswf::tu_string
; alias: _ZNK7gameswf9tu_string14utf8_substringEii
; demangled: gameswf::tu_string::utf8_substring(int, int) const
; decoder-mode: arm
00751f38  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00751f3c  03 00 52 e1                                      cmp r2, r3
00751f40  08 d0 4d e2                                      sub sp, sp, #8
00751f44  02 40 a0 e1                                      mov r4, r2
00751f48  03 60 a0 e1                                      mov r6, r3
00751f4c  00 50 a0 e1                                      mov r5, r0
00751f50  1d 00 00 0a                                      beq #0x751fcc
00751f54  d0 30 d1 e1                                      ldrsb r3, [r1]
00751f58  08 80 8d e2                                      add r8, sp, #8
00751f5c  00 70 a0 e3                                      mov r7, #0
00751f60  01 00 73 e3                                      cmn r3, #1
00751f64  0c 90 91 05                                      ldreq sb, [r1, #0xc]
00751f68  01 90 81 12                                      addne sb, r1, #1
00751f6c  04 90 28 e5                                      str sb, [r8, #-4]!
00751f70  09 a0 a0 e1                                      mov sl, sb
00751f74  04 00 57 e1                                      cmp r7, r4
00751f78  08 00 a0 e1                                      mov r0, r8
00751f7c  01 70 87 e2                                      add r7, r7, #1
00751f80  04 a0 9d 05                                      ldreq sl, [sp, #4]
00751f84  42 01 00 eb                                      bl #0x752494
00751f88  06 00 57 e1                                      cmp r7, r6
00751f8c  0c 00 00 0a                                      beq #0x751fc4
00751f90  00 00 50 e3                                      cmp r0, #0
00751f94  f6 ff ff 1a                                      bne #0x751f74
00751f98  07 00 56 e1                                      cmp r6, r7
00751f9c  08 00 00 ca                                      bgt #0x751fc4
00751fa0  0a 10 a0 e1                                      mov r1, sl
00751fa4  0a 00 59 e1                                      cmp sb, sl
00751fa8  09 20 6a 20                                      rsbhs r2, sl, sb
00751fac  0a 20 6a 30                                      rsblo r2, sl, sl
00751fb0  05 00 a0 e1                                      mov r0, r5
00751fb4  be ff ff eb                                      bl #0x751eb4
00751fb8  05 00 a0 e1                                      mov r0, r5
00751fbc  08 d0 8d e2                                      add sp, sp, #8
00751fc0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00751fc4  04 90 9d e5                                      ldr sb, [sp, #4]
00751fc8  f4 ff ff ea                                      b #0x751fa0
00751fcc  10 30 90 e5                                      ldr r3, [r0, #0x10]
00751fd0  00 10 e0 e3                                      mvn r1, #0
00751fd4  00 20 a0 e3                                      mov r2, #0
00751fd8  11 30 d7 e7                                      bfi r3, r1, #0, #0x18
00751fdc  23 1c a0 e1                                      lsr r1, r3, #0x18
00751fe0  12 10 c0 e7                                      bfi r1, r2, #0, #1
00751fe4  01 00 a0 e3                                      mov r0, #1
00751fe8  10 30 85 e5                                      str r3, [r5, #0x10]
00751fec  00 00 c5 e5                                      strb r0, [r5]
00751ff0  13 10 c5 e5                                      strb r1, [r5, #0x13]
00751ff4  01 20 c5 e5                                      strb r2, [r5, #1]
00751ff8  ee ff ff ea                                      b #0x751fb8

; FUNCTION 0x007520e0, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::tu_string
; alias: _ZN7gameswf9tu_string22encode_utf8_from_wcharEPS0_PKt
; demangled: gameswf::tu_string::encode_utf8_from_wchar(gameswf::tu_string*, unsigned short const*)
; decoder-mode: arm
007520e0  c5 ff ff ea                                      b #0x751ffc

; FUNCTION 0x007521c8, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::tu_string
; alias: _ZN7gameswf9tu_string22encode_utf8_from_wcharEPS0_PKj
; demangled: gameswf::tu_string::encode_utf8_from_wchar(gameswf::tu_string*, unsigned int const*)
; decoder-mode: arm
007521c8  c5 ff ff ea                                      b #0x7520e4

; FUNCTION 0x007521cc, declared_size=96, range_size=96, mode=arm
; class-group: gameswf::tu_string
; alias: _ZN7gameswf9tu_stringpLEPKc
; demangled: gameswf::tu_string::operator+=(char const*)
; decoder-mode: arm
007521cc  70 40 2d e9                                      push {r4, r5, r6, lr}
007521d0  00 40 a0 e1                                      mov r4, r0
007521d4  01 00 a0 e1                                      mov r0, r1
007521d8  01 50 a0 e1                                      mov r5, r1
007521dc  1c ef ee eb                                      bl #0x30de54
007521e0  d0 60 d4 e1                                      ldrsb r6, [r4]
007521e4  01 00 76 e3                                      cmn r6, #1
007521e8  04 60 94 05                                      ldreq r6, [r4, #4]
007521ec  01 60 46 e2                                      sub r6, r6, #1
007521f0  00 10 86 e0                                      add r1, r6, r0
007521f4  04 00 a0 e1                                      mov r0, r4
007521f8  c5 fe ff eb                                      bl #0x751d14
007521fc  d0 30 d4 e1                                      ldrsb r3, [r4]
00752200  05 10 a0 e1                                      mov r1, r5
00752204  01 00 73 e3                                      cmn r3, #1
00752208  0c 00 94 05                                      ldreq r0, [r4, #0xc]
0075220c  01 00 84 12                                      addne r0, r4, #1
00752210  06 00 80 e0                                      add r0, r0, r6
00752214  c1 f0 ee eb                                      bl #0x30e520
00752218  10 30 94 e5                                      ldr r3, [r4, #0x10]
0075221c  00 20 e0 e3                                      mvn r2, #0
00752220  12 30 d7 e7                                      bfi r3, r2, #0, #0x18
00752224  10 30 84 e5                                      str r3, [r4, #0x10]
00752228  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0075222c, declared_size=144, range_size=144, mode=arm
; class-group: gameswf::tu_string
; alias: _ZN7gameswf9tu_string16append_wide_charEj
; demangled: gameswf::tu_string::append_wide_char(unsigned int)
; decoder-mode: arm
0075222c  80 30 9f e5                                      ldr r3, [pc, #0x80]
00752230  01 20 a0 e1                                      mov r2, r1
00752234  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
00752238  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0075223c  03 30 8f e0                                      add r3, pc, r3
00752240  01 50 93 e7                                      ldr r5, [r3, r1]
00752244  14 d0 4d e2                                      sub sp, sp, #0x14
00752248  04 70 8d e2                                      add r7, sp, #4
0075224c  00 c0 95 e5                                      ldr ip, [r5]
00752250  00 40 a0 e1                                      mov r4, r0
00752254  00 60 a0 e3                                      mov r6, #0
00752258  07 00 a0 e1                                      mov r0, r7
0075225c  0d 10 a0 e1                                      mov r1, sp
00752260  0c c0 8d e5                                      str ip, [sp, #0xc]
00752264  00 60 8d e5                                      str r6, [sp]
00752268  5d 01 00 eb                                      bl #0x7527e4
0075226c  00 30 9d e5                                      ldr r3, [sp]
00752270  10 20 8d e2                                      add r2, sp, #0x10
00752274  07 10 a0 e1                                      mov r1, r7
00752278  03 30 82 e0                                      add r3, r2, r3
0075227c  0c 60 43 e5                                      strb r6, [r3, #-0xc]
00752280  04 00 a0 e1                                      mov r0, r4
00752284  d0 ff ff eb                                      bl #0x7521cc
00752288  10 30 94 e5                                      ldr r3, [r4, #0x10]
0075228c  00 10 e0 e3                                      mvn r1, #0
00752290  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00752294  11 30 d7 e7                                      bfi r3, r1, #0, #0x18
00752298  10 30 84 e5                                      str r3, [r4, #0x10]
0075229c  00 30 95 e5                                      ldr r3, [r5]
007522a0  03 00 52 e1                                      cmp r2, r3
007522a4  01 00 00 1a                                      bne #0x7522b0
007522a8  14 d0 8d e2                                      add sp, sp, #0x14
007522ac  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
007522b0  16 f0 ee eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007522b4  54 28 24 00 ac 40 00 00                          .byte 0x54, 0x28, 0x24, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x007522bc, declared_size=164, range_size=164, mode=arm
; class-group: gameswf::tu_string
; alias: _ZNK7gameswf9tu_string13utf8_to_lowerEv
; demangled: gameswf::tu_string::utf8_to_lower() const
; decoder-mode: arm
007522bc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
007522c0  d0 30 d1 e1                                      ldrsb r3, [r1]
007522c4  00 40 a0 e1                                      mov r4, r0
007522c8  0c d0 4d e2                                      sub sp, sp, #0xc
007522cc  01 00 73 e3                                      cmn r3, #1
007522d0  10 30 90 e5                                      ldr r3, [r0, #0x10]
007522d4  0c 10 91 05                                      ldreq r1, [r1, #0xc]
007522d8  00 00 e0 e3                                      mvn r0, #0
007522dc  10 30 d7 e7                                      bfi r3, r0, #0, #0x18
007522e0  70 60 9f e5                                      ldr r6, [pc, #0x70]
007522e4  01 10 81 12                                      addne r1, r1, #1
007522e8  00 20 a0 e3                                      mov r2, #0
007522ec  23 0c a0 e1                                      lsr r0, r3, #0x18
007522f0  08 50 8d e2                                      add r5, sp, #8
007522f4  04 10 25 e5                                      str r1, [r5, #-4]!
007522f8  12 00 c0 e7                                      bfi r0, r2, #0, #1
007522fc  01 10 a0 e3                                      mov r1, #1
00752300  06 60 8f e0                                      add r6, pc, r6
00752304  10 30 84 e5                                      str r3, [r4, #0x10]
00752308  4c 70 9f e5                                      ldr r7, [pc, #0x4c]
0075230c  00 10 c4 e5                                      strb r1, [r4]
00752310  13 00 c4 e5                                      strb r0, [r4, #0x13]
00752314  01 20 c4 e5                                      strb r2, [r4, #1]
00752318  07 00 00 ea                                      b #0x75233c
0075231c  ff 00 50 e3                                      cmp r0, #0xff
00752320  07 30 96 97                                      ldrls r3, [r6, r7]
00752324  00 10 a0 81                                      movhi r1, r0
00752328  00 30 93 95                                      ldrls r3, [r3]
0075232c  80 00 83 90                                      addls r0, r3, r0, lsl #1
00752330  f2 10 d0 91                                      ldrshls r1, [r0, #2]
00752334  04 00 a0 e1                                      mov r0, r4
00752338  bb ff ff eb                                      bl #0x75222c
0075233c  05 00 a0 e1                                      mov r0, r5
00752340  53 00 00 eb                                      bl #0x752494
00752344  00 00 50 e3                                      cmp r0, #0
00752348  f3 ff ff 1a                                      bne #0x75231c
0075234c  04 00 a0 e1                                      mov r0, r4
00752350  0c d0 8d e2                                      add sp, sp, #0xc
00752354  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
00752358  90 27 24 00 e0 36 00 00                          .byte 0x90, 0x27, 0x24, 0x00, 0xe0, 0x36, 0x00, 0x00

; FUNCTION 0x00752360, declared_size=164, range_size=164, mode=arm
; class-group: gameswf::tu_string
; alias: _ZNK7gameswf9tu_string13utf8_to_upperEv
; demangled: gameswf::tu_string::utf8_to_upper() const
; decoder-mode: arm
00752360  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00752364  d0 30 d1 e1                                      ldrsb r3, [r1]
00752368  00 40 a0 e1                                      mov r4, r0
0075236c  0c d0 4d e2                                      sub sp, sp, #0xc
00752370  01 00 73 e3                                      cmn r3, #1
00752374  10 30 90 e5                                      ldr r3, [r0, #0x10]
00752378  0c 10 91 05                                      ldreq r1, [r1, #0xc]
0075237c  00 00 e0 e3                                      mvn r0, #0
00752380  10 30 d7 e7                                      bfi r3, r0, #0, #0x18
00752384  70 60 9f e5                                      ldr r6, [pc, #0x70]
00752388  01 10 81 12                                      addne r1, r1, #1
0075238c  00 20 a0 e3                                      mov r2, #0
00752390  23 0c a0 e1                                      lsr r0, r3, #0x18
00752394  08 50 8d e2                                      add r5, sp, #8
00752398  04 10 25 e5                                      str r1, [r5, #-4]!
0075239c  12 00 c0 e7                                      bfi r0, r2, #0, #1
007523a0  01 10 a0 e3                                      mov r1, #1
007523a4  06 60 8f e0                                      add r6, pc, r6
007523a8  10 30 84 e5                                      str r3, [r4, #0x10]
007523ac  4c 70 9f e5                                      ldr r7, [pc, #0x4c]
007523b0  00 10 c4 e5                                      strb r1, [r4]
007523b4  13 00 c4 e5                                      strb r0, [r4, #0x13]
007523b8  01 20 c4 e5                                      strb r2, [r4, #1]
007523bc  07 00 00 ea                                      b #0x7523e0
007523c0  ff 00 50 e3                                      cmp r0, #0xff
007523c4  07 30 96 97                                      ldrls r3, [r6, r7]
007523c8  00 10 a0 81                                      movhi r1, r0
007523cc  00 30 93 95                                      ldrls r3, [r3]
007523d0  80 00 83 90                                      addls r0, r3, r0, lsl #1
007523d4  f2 10 d0 91                                      ldrshls r1, [r0, #2]
007523d8  04 00 a0 e1                                      mov r0, r4
007523dc  92 ff ff eb                                      bl #0x75222c
007523e0  05 00 a0 e1                                      mov r0, r5
007523e4  2a 00 00 eb                                      bl #0x752494
007523e8  00 00 50 e3                                      cmp r0, #0
007523ec  f3 ff ff 1a                                      bne #0x7523c0
007523f0  04 00 a0 e1                                      mov r0, r4
007523f4  0c d0 8d e2                                      add sp, sp, #0xc
007523f8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
007523fc  ec 26 24 00 28 06 00 00                          .byte 0xec, 0x26, 0x24, 0x00, 0x28, 0x06, 0x00, 0x00

; FUNCTION 0x00752404, declared_size=144, range_size=144, mode=arm
; class-group: gameswf::tu_string
; alias: _ZN7gameswf9tu_string16append_wide_charEt
; demangled: gameswf::tu_string::append_wide_char(unsigned short)
; decoder-mode: arm
00752404  80 30 9f e5                                      ldr r3, [pc, #0x80]
00752408  01 20 a0 e1                                      mov r2, r1
0075240c  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
00752410  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00752414  03 30 8f e0                                      add r3, pc, r3
00752418  01 50 93 e7                                      ldr r5, [r3, r1]
0075241c  14 d0 4d e2                                      sub sp, sp, #0x14
00752420  04 70 8d e2                                      add r7, sp, #4
00752424  00 c0 95 e5                                      ldr ip, [r5]
00752428  00 40 a0 e1                                      mov r4, r0
0075242c  00 60 a0 e3                                      mov r6, #0
00752430  07 00 a0 e1                                      mov r0, r7
00752434  0d 10 a0 e1                                      mov r1, sp
00752438  0c c0 8d e5                                      str ip, [sp, #0xc]
0075243c  00 60 8d e5                                      str r6, [sp]
00752440  e7 00 00 eb                                      bl #0x7527e4
00752444  00 30 9d e5                                      ldr r3, [sp]
00752448  10 20 8d e2                                      add r2, sp, #0x10
0075244c  07 10 a0 e1                                      mov r1, r7
00752450  03 30 82 e0                                      add r3, r2, r3
00752454  0c 60 43 e5                                      strb r6, [r3, #-0xc]
00752458  04 00 a0 e1                                      mov r0, r4
0075245c  5a ff ff eb                                      bl #0x7521cc
00752460  10 30 94 e5                                      ldr r3, [r4, #0x10]
00752464  00 10 e0 e3                                      mvn r1, #0
00752468  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0075246c  11 30 d7 e7                                      bfi r3, r1, #0, #0x18
00752470  10 30 84 e5                                      str r3, [r4, #0x10]
00752474  00 30 95 e5                                      ldr r3, [r5]
00752478  03 00 52 e1                                      cmp r2, r3
0075247c  01 00 00 1a                                      bne #0x752488
00752480  14 d0 8d e2                                      add sp, sp, #0x14
00752484  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00752488  a0 ef ee eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0075248c  7c 26 24 00 ac 40 00 00                          .byte 0x7c, 0x26, 0x24, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00752f50, declared_size=220, range_size=220, mode=arm
; class-group: gameswf::tu_string
; alias: _ZN7gameswf9tu_stringaSERKS0_
; demangled: gameswf::tu_string::operator=(gameswf::tu_string const&)
; decoder-mode: arm
00752f50  01 00 50 e1                                      cmp r0, r1
00752f54  70 40 2d e9                                      push {r4, r5, r6, lr}
00752f58  00 50 a0 e1                                      mov r5, r0
00752f5c  01 40 a0 e1                                      mov r4, r1
00752f60  16 00 00 0a                                      beq #0x752fc0
00752f64  d0 10 d1 e1                                      ldrsb r1, [r1]
00752f68  01 00 71 e3                                      cmn r1, #1
00752f6c  04 10 94 05                                      ldreq r1, [r4, #4]
00752f70  01 10 41 e2                                      sub r1, r1, #1
00752f74  66 fb ff eb                                      bl #0x751d14
00752f78  d0 30 d5 e1                                      ldrsb r3, [r5]
00752f7c  01 00 73 e3                                      cmn r3, #1
00752f80  d0 30 d4 e1                                      ldrsb r3, [r4]
00752f84  01 00 85 12                                      addne r0, r5, #1
00752f88  0c 00 95 05                                      ldreq r0, [r5, #0xc]
00752f8c  01 00 73 e3                                      cmn r3, #1
00752f90  01 10 84 12                                      addne r1, r4, #1
00752f94  0c 10 94 05                                      ldreq r1, [r4, #0xc]
00752f98  60 ed ee eb                                      bl #0x30e520
00752f9c  10 60 94 e5                                      ldr r6, [r4, #0x10]
00752fa0  ff 34 e0 e3                                      mvn r3, #0xff000000
00752fa4  ff 24 c6 e3                                      bic r2, r6, #0xff000000
00752fa8  03 00 52 e1                                      cmp r2, r3
00752fac  56 20 b7 17                                      sbfxne r2, r6, #0, #0x18
00752fb0  03 00 00 0a                                      beq #0x752fc4
00752fb4  10 30 95 e5                                      ldr r3, [r5, #0x10]
00752fb8  12 30 d7 e7                                      bfi r3, r2, #0, #0x18
00752fbc  10 30 85 e5                                      str r3, [r5, #0x10]
00752fc0  70 80 bd e8                                      pop {r4, r5, r6, pc}
00752fc4  d0 30 d4 e1                                      ldrsb r3, [r4]
00752fc8  01 00 73 e3                                      cmn r3, #1
00752fcc  04 30 94 05                                      ldreq r3, [r4, #4]
00752fd0  01 30 43 12                                      subne r3, r3, #1
00752fd4  01 c0 84 12                                      addne ip, r4, #1
00752fd8  01 30 43 02                                      subeq r3, r3, #1
00752fdc  0c c0 94 05                                      ldreq ip, [r4, #0xc]
00752fe0  00 00 53 e3                                      cmp r3, #0
00752fe4  05 25 01 d3                                      movwle r2, #0x1505
00752fe8  0c 00 00 da                                      ble #0x753020
00752fec  03 30 8c e0                                      add r3, ip, r3
00752ff0  05 25 01 e3                                      movw r2, #0x1505
00752ff4  01 10 53 e5                                      ldrb r1, [r3, #-1]
00752ff8  01 30 43 e2                                      sub r3, r3, #1
00752ffc  82 22 82 e0                                      add r2, r2, r2, lsl #5
00753000  41 00 41 e2                                      sub r0, r1, #0x41
00753004  70 00 ef e6                                      uxtb r0, r0
00753008  19 00 50 e3                                      cmp r0, #0x19
0075300c  20 10 81 92                                      addls r1, r1, #0x20
00753010  0c 00 53 e1                                      cmp r3, ip
00753014  02 20 21 e0                                      eor r2, r1, r2
00753018  f5 ff ff 1a                                      bne #0x752ff4
0075301c  52 20 b7 e7                                      sbfx r2, r2, #0, #0x18
00753020  12 60 d7 e7                                      bfi r6, r2, #0, #0x18
00753024  10 60 84 e5                                      str r6, [r4, #0x10]
00753028  e1 ff ff ea                                      b #0x752fb4

; FUNCTION 0x0075302c, declared_size=244, range_size=244, mode=arm
; class-group: gameswf::tu_string
; alias: _ZN7gameswf9tu_stringC1ERKS0_
; demangled: gameswf::tu_string::tu_string(gameswf::tu_string const&)
; decoder-mode: arm
0075302c  70 40 2d e9                                      push {r4, r5, r6, lr}
00753030  01 30 a0 e3                                      mov r3, #1
00753034  00 30 c0 e5                                      strb r3, [r0]
00753038  00 30 a0 e3                                      mov r3, #0
0075303c  01 30 c0 e5                                      strb r3, [r0, #1]
00753040  01 50 a0 e1                                      mov r5, r1
00753044  d0 10 d1 e1                                      ldrsb r1, [r1]
00753048  00 40 a0 e1                                      mov r4, r0
0075304c  01 00 71 e3                                      cmn r1, #1
00753050  04 10 95 05                                      ldreq r1, [r5, #4]
00753054  01 10 41 e2                                      sub r1, r1, #1
00753058  2d fb ff eb                                      bl #0x751d14
0075305c  d0 30 d4 e1                                      ldrsb r3, [r4]
00753060  01 00 73 e3                                      cmn r3, #1
00753064  d0 30 d5 e1                                      ldrsb r3, [r5]
00753068  01 00 84 12                                      addne r0, r4, #1
0075306c  0c 00 94 05                                      ldreq r0, [r4, #0xc]
00753070  01 00 73 e3                                      cmn r3, #1
00753074  01 10 85 12                                      addne r1, r5, #1
00753078  0c 10 95 05                                      ldreq r1, [r5, #0xc]
0075307c  27 ed ee eb                                      bl #0x30e520
00753080  10 60 95 e5                                      ldr r6, [r5, #0x10]
00753084  ff 34 e0 e3                                      mvn r3, #0xff000000
00753088  ff 24 c6 e3                                      bic r2, r6, #0xff000000
0075308c  03 00 52 e1                                      cmp r2, r3
00753090  56 20 b7 17                                      sbfxne r2, r6, #0, #0x18
00753094  07 00 00 0a                                      beq #0x7530b8
00753098  10 30 94 e5                                      ldr r3, [r4, #0x10]
0075309c  04 00 a0 e1                                      mov r0, r4
007530a0  12 30 d7 e7                                      bfi r3, r2, #0, #0x18
007530a4  23 2c a0 e1                                      lsr r2, r3, #0x18
007530a8  1f 20 c0 e7                                      bfc r2, #0, #1
007530ac  10 30 84 e5                                      str r3, [r4, #0x10]
007530b0  13 20 c4 e5                                      strb r2, [r4, #0x13]
007530b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
007530b8  d0 30 d5 e1                                      ldrsb r3, [r5]
007530bc  01 00 73 e3                                      cmn r3, #1
007530c0  04 30 95 05                                      ldreq r3, [r5, #4]
007530c4  01 30 43 12                                      subne r3, r3, #1
007530c8  01 c0 85 12                                      addne ip, r5, #1
007530cc  01 30 43 02                                      subeq r3, r3, #1
007530d0  0c c0 95 05                                      ldreq ip, [r5, #0xc]
007530d4  00 00 53 e3                                      cmp r3, #0
007530d8  05 25 01 d3                                      movwle r2, #0x1505
007530dc  0c 00 00 da                                      ble #0x753114
007530e0  03 30 8c e0                                      add r3, ip, r3
007530e4  05 25 01 e3                                      movw r2, #0x1505
007530e8  01 10 53 e5                                      ldrb r1, [r3, #-1]
007530ec  01 30 43 e2                                      sub r3, r3, #1
007530f0  82 22 82 e0                                      add r2, r2, r2, lsl #5
007530f4  41 00 41 e2                                      sub r0, r1, #0x41
007530f8  70 00 ef e6                                      uxtb r0, r0
007530fc  19 00 50 e3                                      cmp r0, #0x19
00753100  20 10 81 92                                      addls r1, r1, #0x20
00753104  0c 00 53 e1                                      cmp r3, ip
00753108  02 20 21 e0                                      eor r2, r1, r2
0075310c  f5 ff ff 1a                                      bne #0x7530e8
00753110  52 20 b7 e7                                      sbfx r2, r2, #0, #0x18
00753114  12 60 d7 e7                                      bfi r6, r2, #0, #0x18
00753118  10 60 85 e5                                      str r6, [r5, #0x10]
0075311c  dd ff ff ea                                      b #0x753098

; FUNCTION 0x00753120, declared_size=112, range_size=112, mode=arm
; class-group: gameswf::tu_string
; alias: _ZN7gameswf9tu_stringpLERKS0_
; demangled: gameswf::tu_string::operator+=(gameswf::tu_string const&)
; decoder-mode: arm
00753120  70 40 2d e9                                      push {r4, r5, r6, lr}
00753124  01 50 a0 e1                                      mov r5, r1
00753128  d0 10 d1 e1                                      ldrsb r1, [r1]
0075312c  d0 60 d0 e1                                      ldrsb r6, [r0]
00753130  00 40 a0 e1                                      mov r4, r0
00753134  01 00 71 e3                                      cmn r1, #1
00753138  04 10 95 05                                      ldreq r1, [r5, #4]
0075313c  01 00 76 e3                                      cmn r6, #1
00753140  04 60 90 05                                      ldreq r6, [r0, #4]
00753144  01 10 41 e2                                      sub r1, r1, #1
00753148  01 60 46 e2                                      sub r6, r6, #1
0075314c  01 10 86 e0                                      add r1, r6, r1
00753150  ef fa ff eb                                      bl #0x751d14
00753154  d0 30 d4 e1                                      ldrsb r3, [r4]
00753158  01 00 73 e3                                      cmn r3, #1
0075315c  d0 30 d5 e1                                      ldrsb r3, [r5]
00753160  0c 00 94 05                                      ldreq r0, [r4, #0xc]
00753164  01 00 84 12                                      addne r0, r4, #1
00753168  01 00 73 e3                                      cmn r3, #1
0075316c  06 00 80 e0                                      add r0, r0, r6
00753170  01 10 85 12                                      addne r1, r5, #1
00753174  0c 10 95 05                                      ldreq r1, [r5, #0xc]
00753178  e8 ec ee eb                                      bl #0x30e520
0075317c  10 30 94 e5                                      ldr r3, [r4, #0x10]
00753180  00 20 e0 e3                                      mvn r2, #0
00753184  12 30 d7 e7                                      bfi r3, r2, #0, #0x18
00753188  10 30 84 e5                                      str r3, [r4, #0x10]
0075318c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0075be2c, declared_size=244, range_size=244, mode=arm
; class-group: gameswf::tu_string
; alias: _ZN7gameswf9tu_stringC2ERKS0_
; demangled: gameswf::tu_string::tu_string(gameswf::tu_string const&)
; decoder-mode: arm
0075be2c  70 40 2d e9                                      push {r4, r5, r6, lr}
0075be30  01 30 a0 e3                                      mov r3, #1
0075be34  00 30 c0 e5                                      strb r3, [r0]
0075be38  00 30 a0 e3                                      mov r3, #0
0075be3c  01 30 c0 e5                                      strb r3, [r0, #1]
0075be40  01 50 a0 e1                                      mov r5, r1
0075be44  d0 10 d1 e1                                      ldrsb r1, [r1]
0075be48  00 40 a0 e1                                      mov r4, r0
0075be4c  01 00 71 e3                                      cmn r1, #1
0075be50  04 10 95 05                                      ldreq r1, [r5, #4]
0075be54  01 10 41 e2                                      sub r1, r1, #1
0075be58  ad d7 ff eb                                      bl #0x751d14
0075be5c  d0 30 d4 e1                                      ldrsb r3, [r4]
0075be60  01 00 73 e3                                      cmn r3, #1
0075be64  d0 30 d5 e1                                      ldrsb r3, [r5]
0075be68  01 00 84 12                                      addne r0, r4, #1
0075be6c  0c 00 94 05                                      ldreq r0, [r4, #0xc]
0075be70  01 00 73 e3                                      cmn r3, #1
0075be74  01 10 85 12                                      addne r1, r5, #1
0075be78  0c 10 95 05                                      ldreq r1, [r5, #0xc]
0075be7c  a7 c9 ee eb                                      bl #0x30e520
0075be80  10 60 95 e5                                      ldr r6, [r5, #0x10]
0075be84  ff 34 e0 e3                                      mvn r3, #0xff000000
0075be88  ff 24 c6 e3                                      bic r2, r6, #0xff000000
0075be8c  03 00 52 e1                                      cmp r2, r3
0075be90  56 20 b7 17                                      sbfxne r2, r6, #0, #0x18
0075be94  07 00 00 0a                                      beq #0x75beb8
0075be98  10 30 94 e5                                      ldr r3, [r4, #0x10]
0075be9c  04 00 a0 e1                                      mov r0, r4
0075bea0  12 30 d7 e7                                      bfi r3, r2, #0, #0x18
0075bea4  23 2c a0 e1                                      lsr r2, r3, #0x18
0075bea8  1f 20 c0 e7                                      bfc r2, #0, #1
0075beac  10 30 84 e5                                      str r3, [r4, #0x10]
0075beb0  13 20 c4 e5                                      strb r2, [r4, #0x13]
0075beb4  70 80 bd e8                                      pop {r4, r5, r6, pc}
0075beb8  d0 30 d5 e1                                      ldrsb r3, [r5]
0075bebc  01 00 73 e3                                      cmn r3, #1
0075bec0  04 30 95 05                                      ldreq r3, [r5, #4]
0075bec4  01 30 43 12                                      subne r3, r3, #1
0075bec8  01 c0 85 12                                      addne ip, r5, #1
0075becc  01 30 43 02                                      subeq r3, r3, #1
0075bed0  0c c0 95 05                                      ldreq ip, [r5, #0xc]
0075bed4  00 00 53 e3                                      cmp r3, #0
0075bed8  05 25 01 d3                                      movwle r2, #0x1505
0075bedc  0c 00 00 da                                      ble #0x75bf14
0075bee0  03 30 8c e0                                      add r3, ip, r3
0075bee4  05 25 01 e3                                      movw r2, #0x1505
0075bee8  01 10 53 e5                                      ldrb r1, [r3, #-1]
0075beec  01 30 43 e2                                      sub r3, r3, #1
0075bef0  82 22 82 e0                                      add r2, r2, r2, lsl #5
0075bef4  41 00 41 e2                                      sub r0, r1, #0x41
0075bef8  70 00 ef e6                                      uxtb r0, r0
0075befc  19 00 50 e3                                      cmp r0, #0x19
0075bf00  20 10 81 92                                      addls r1, r1, #0x20
0075bf04  0c 00 53 e1                                      cmp r3, ip
0075bf08  02 20 21 e0                                      eor r2, r1, r2
0075bf0c  f5 ff ff 1a                                      bne #0x75bee8
0075bf10  52 20 b7 e7                                      sbfx r2, r2, #0, #0x18
0075bf14  12 60 d7 e7                                      bfi r6, r2, #0, #0x18
0075bf18  10 60 85 e5                                      str r6, [r5, #0x10]
0075bf1c  dd ff ff ea                                      b #0x75be98

; FUNCTION 0x007635c8, declared_size=152, range_size=152, mode=arm
; class-group: gameswf::tu_string
; alias: _ZNK7gameswf9tu_string9get_hashiEv
; demangled: gameswf::tu_string::get_hashi() const
; decoder-mode: arm
007635c8  30 00 2d e9                                      push {r4, r5}
007635cc  10 50 90 e5                                      ldr r5, [r0, #0x10]
007635d0  ff 34 e0 e3                                      mvn r3, #0xff000000
007635d4  ff 24 c5 e3                                      bic r2, r5, #0xff000000
007635d8  03 00 52 e1                                      cmp r2, r3
007635dc  55 30 b7 17                                      sbfxne r3, r5, #0, #0x18
007635e0  02 00 00 0a                                      beq #0x7635f0
007635e4  03 00 a0 e1                                      mov r0, r3
007635e8  30 00 bd e8                                      pop {r4, r5}
007635ec  1e ff 2f e1                                      bx lr
007635f0  d0 30 d0 e1                                      ldrsb r3, [r0]
007635f4  01 00 73 e3                                      cmn r3, #1
007635f8  04 30 90 05                                      ldreq r3, [r0, #4]
007635fc  01 30 43 12                                      subne r3, r3, #1
00763600  01 40 80 12                                      addne r4, r0, #1
00763604  01 30 43 02                                      subeq r3, r3, #1
00763608  0c 40 90 05                                      ldreq r4, [r0, #0xc]
0076360c  00 00 53 e3                                      cmp r3, #0
00763610  05 35 01 d3                                      movwle r3, #0x1505
00763614  03 20 a0 d1                                      movle r2, r3
00763618  0d 00 00 da                                      ble #0x763654
0076361c  03 30 84 e0                                      add r3, r4, r3
00763620  05 25 01 e3                                      movw r2, #0x1505
00763624  01 10 53 e5                                      ldrb r1, [r3, #-1]
00763628  01 30 43 e2                                      sub r3, r3, #1
0076362c  82 22 82 e0                                      add r2, r2, r2, lsl #5
00763630  41 c0 41 e2                                      sub ip, r1, #0x41
00763634  7c c0 ef e6                                      uxtb ip, ip
00763638  19 00 5c e3                                      cmp ip, #0x19
0076363c  20 10 81 92                                      addls r1, r1, #0x20
00763640  04 00 53 e1                                      cmp r3, r4
00763644  02 20 21 e0                                      eor r2, r1, r2
00763648  f5 ff ff 1a                                      bne #0x763624
0076364c  52 20 b7 e7                                      sbfx r2, r2, #0, #0x18
00763650  02 30 a0 e1                                      mov r3, r2
00763654  12 50 d7 e7                                      bfi r5, r2, #0, #0x18
00763658  10 50 80 e5                                      str r5, [r0, #0x10]
0076365c  e0 ff ff ea                                      b #0x7635e4

; FUNCTION 0x0076c818, declared_size=80, range_size=80, mode=arm
; class-group: gameswf::tu_string
; alias: _ZN7gameswf9tu_stringaSEPKc
; demangled: gameswf::tu_string::operator=(char const*)
; decoder-mode: arm
0076c818  70 40 2d e9                                      push {r4, r5, r6, lr}
0076c81c  00 50 51 e2                                      subs r5, r1, #0
0076c820  00 40 a0 e1                                      mov r4, r0
0076c824  0e 00 00 0a                                      beq #0x76c864
0076c828  05 00 a0 e1                                      mov r0, r5
0076c82c  88 85 ee eb                                      bl #0x30de54
0076c830  00 10 a0 e1                                      mov r1, r0
0076c834  04 00 a0 e1                                      mov r0, r4
0076c838  35 95 ff eb                                      bl #0x751d14
0076c83c  d0 30 d4 e1                                      ldrsb r3, [r4]
0076c840  05 10 a0 e1                                      mov r1, r5
0076c844  01 00 73 e3                                      cmn r3, #1
0076c848  01 00 84 12                                      addne r0, r4, #1
0076c84c  0c 00 94 05                                      ldreq r0, [r4, #0xc]
0076c850  32 87 ee eb                                      bl #0x30e520
0076c854  10 30 94 e5                                      ldr r3, [r4, #0x10]
0076c858  00 20 e0 e3                                      mvn r2, #0
0076c85c  12 30 d7 e7                                      bfi r3, r2, #0, #0x18
0076c860  10 30 84 e5                                      str r3, [r4, #0x10]
0076c864  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0078aebc, declared_size=36, range_size=36, mode=arm
; class-group: gameswf::tu_string
; alias: _ZNK7gameswf9tu_stringeqEPKc
; demangled: gameswf::tu_string::operator==(char const*) const
; decoder-mode: arm
0078aebc  10 40 2d e9                                      push {r4, lr}
0078aec0  d0 30 d0 e1                                      ldrsb r3, [r0]
0078aec4  01 00 73 e3                                      cmn r3, #1
0078aec8  01 00 80 12                                      addne r0, r0, #1
0078aecc  0c 00 90 05                                      ldreq r0, [r0, #0xc]
0078aed0  11 0d ee eb                                      bl #0x30e31c
0078aed4  01 00 70 e2                                      rsbs r0, r0, #1
0078aed8  00 00 a0 33                                      movlo r0, #0
0078aedc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0078b0c0, declared_size=104, range_size=104, mode=arm
; class-group: gameswf::tu_string
; alias: _ZN7gameswf9tu_string6insertEic
; demangled: gameswf::tu_string::insert(int, char)
; decoder-mode: arm
0078b0c0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0078b0c4  d0 80 d0 e1                                      ldrsb r8, [r0]
0078b0c8  00 40 a0 e1                                      mov r4, r0
0078b0cc  01 50 a0 e1                                      mov r5, r1
0078b0d0  01 00 78 e3                                      cmn r8, #1
0078b0d4  04 80 90 05                                      ldreq r8, [r0, #4]
0078b0d8  02 70 a0 e1                                      mov r7, r2
0078b0dc  01 80 48 e2                                      sub r8, r8, #1
0078b0e0  01 80 88 e2                                      add r8, r8, #1
0078b0e4  08 10 a0 e1                                      mov r1, r8
0078b0e8  09 1b ff eb                                      bl #0x751d14
0078b0ec  d0 30 d4 e1                                      ldrsb r3, [r4]
0078b0f0  01 00 85 e2                                      add r0, r5, #1
0078b0f4  08 20 65 e0                                      rsb r2, r5, r8
0078b0f8  01 00 73 e3                                      cmn r3, #1
0078b0fc  0c 60 94 05                                      ldreq r6, [r4, #0xc]
0078b100  01 60 84 12                                      addne r6, r4, #1
0078b104  00 00 86 e0                                      add r0, r6, r0
0078b108  05 10 86 e0                                      add r1, r6, r5
0078b10c  89 0b ee eb                                      bl #0x30df38
0078b110  05 70 c6 e7                                      strb r7, [r6, r5]
0078b114  10 30 94 e5                                      ldr r3, [r4, #0x10]
0078b118  00 20 e0 e3                                      mvn r2, #0
0078b11c  12 30 d7 e7                                      bfi r3, r2, #0, #0x18
0078b120  10 30 84 e5                                      str r3, [r4, #0x10]
0078b124  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0078b94c, declared_size=96, range_size=96, mode=arm
; class-group: gameswf::tu_string
; alias: _ZN7gameswf9tu_string5eraseEii.clone.1
; demangled: gameswf::tu_string::erase(int, int) [clone .clone.1]
; decoder-mode: arm
0078b94c  10 40 2d e9                                      push {r4, lr}
0078b950  d0 30 d0 e1                                      ldrsb r3, [r0]
0078b954  00 40 a0 e1                                      mov r4, r0
0078b958  01 00 73 e3                                      cmn r3, #1
0078b95c  0c 30 94 05                                      ldreq r3, [r4, #0xc]
0078b960  01 30 84 12                                      addne r3, r4, #1
0078b964  01 00 80 10                                      addne r0, r0, r1
0078b968  01 00 83 00                                      addeq r0, r3, r1
0078b96c  01 10 81 e2                                      add r1, r1, #1
0078b970  01 10 83 e0                                      add r1, r3, r1
0078b974  01 00 80 12                                      addne r0, r0, #1
0078b978  e8 0a ee eb                                      bl #0x30e520
0078b97c  d0 10 d4 e1                                      ldrsb r1, [r4]
0078b980  04 00 a0 e1                                      mov r0, r4
0078b984  01 00 71 e3                                      cmn r1, #1
0078b988  04 10 94 05                                      ldreq r1, [r4, #4]
0078b98c  01 10 41 e2                                      sub r1, r1, #1
0078b990  01 10 41 e2                                      sub r1, r1, #1
0078b994  de 18 ff eb                                      bl #0x751d14
0078b998  10 30 94 e5                                      ldr r3, [r4, #0x10]
0078b99c  00 20 e0 e3                                      mvn r2, #0
0078b9a0  12 30 d7 e7                                      bfi r3, r2, #0, #0x18
0078b9a4  10 30 84 e5                                      str r3, [r4, #0x10]
0078b9a8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00796f18, declared_size=68, range_size=68, mode=arm
; class-group: gameswf::tu_string
; alias: _ZNK7gameswf9tu_stringeqERKS0_
; demangled: gameswf::tu_string::operator==(gameswf::tu_string const&) const
; decoder-mode: arm
00796f18  01 00 50 e1                                      cmp r0, r1
00796f1c  10 40 2d e9                                      push {r4, lr}
00796f20  0b 00 00 0a                                      beq #0x796f54
00796f24  d0 30 d0 e1                                      ldrsb r3, [r0]
00796f28  01 00 73 e3                                      cmn r3, #1
00796f2c  d0 30 d1 e1                                      ldrsb r3, [r1]
00796f30  01 00 80 12                                      addne r0, r0, #1
00796f34  0c 00 90 05                                      ldreq r0, [r0, #0xc]
00796f38  01 00 73 e3                                      cmn r3, #1
00796f3c  01 10 81 12                                      addne r1, r1, #1
00796f40  0c 10 91 05                                      ldreq r1, [r1, #0xc]
00796f44  f4 dc ed eb                                      bl #0x30e31c
00796f48  01 00 70 e2                                      rsbs r0, r0, #1
00796f4c  00 00 a0 33                                      movlo r0, #0
00796f50  10 80 bd e8                                      pop {r4, pc}
00796f54  01 00 a0 e3                                      mov r0, #1
00796f58  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007a3a64, declared_size=104, range_size=104, mode=arm
; class-group: gameswf::tu_string
; alias: _ZN7gameswf9tu_stringC1EPKc.clone.0
; demangled: gameswf::tu_string::tu_string(char const*) [clone .clone.0]
; decoder-mode: arm
007a3a64  01 30 a0 e3                                      mov r3, #1
007a3a68  10 40 2d e9                                      push {r4, lr}
007a3a6c  00 30 c0 e5                                      strb r3, [r0]
007a3a70  00 30 a0 e3                                      mov r3, #0
007a3a74  00 40 a0 e1                                      mov r4, r0
007a3a78  01 30 c0 e5                                      strb r3, [r0, #1]
007a3a7c  07 10 a0 e3                                      mov r1, #7
007a3a80  a3 b8 fe eb                                      bl #0x751d14
007a3a84  d0 30 d4 e1                                      ldrsb r3, [r4]
007a3a88  38 10 9f e5                                      ldr r1, [pc, #0x38]
007a3a8c  08 20 a0 e3                                      mov r2, #8
007a3a90  01 00 73 e3                                      cmn r3, #1
007a3a94  01 00 84 12                                      addne r0, r4, #1
007a3a98  0c 00 94 05                                      ldreq r0, [r4, #0xc]
007a3a9c  01 10 8f e0                                      add r1, pc, r1
007a3aa0  70 ab ed eb                                      bl #0x30e868
007a3aa4  10 30 94 e5                                      ldr r3, [r4, #0x10]
007a3aa8  00 20 e0 e3                                      mvn r2, #0
007a3aac  04 00 a0 e1                                      mov r0, r4
007a3ab0  12 30 d7 e7                                      bfi r3, r2, #0, #0x18
007a3ab4  23 2c a0 e1                                      lsr r2, r3, #0x18
007a3ab8  1f 20 c0 e7                                      bfc r2, #0, #1
007a3abc  10 30 84 e5                                      str r3, [r4, #0x10]
007a3ac0  13 20 c4 e5                                      strb r2, [r4, #0x13]
007a3ac4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007a3ac8  1c 6b 16 00                                      .byte 0x1c, 0x6b, 0x16, 0x00

; FUNCTION 0x007a3cf4, declared_size=104, range_size=104, mode=arm
; class-group: gameswf::tu_string
; alias: _ZN7gameswf9tu_stringpLEc
; demangled: gameswf::tu_string::operator+=(char)
; decoder-mode: arm
007a3cf4  30 40 2d e9                                      push {r4, r5, lr}
007a3cf8  00 00 51 e3                                      cmp r1, #0
007a3cfc  0c d0 4d e2                                      sub sp, sp, #0xc
007a3d00  00 40 a0 e1                                      mov r4, r0
007a3d04  07 10 cd e5                                      strb r1, [sp, #7]
007a3d08  11 00 00 0a                                      beq #0x7a3d54
007a3d0c  d0 50 d0 e1                                      ldrsb r5, [r0]
007a3d10  01 00 75 e3                                      cmn r5, #1
007a3d14  04 50 90 05                                      ldreq r5, [r0, #4]
007a3d18  01 50 45 e2                                      sub r5, r5, #1
007a3d1c  01 10 85 e2                                      add r1, r5, #1
007a3d20  fb b7 fe eb                                      bl #0x751d14
007a3d24  d0 30 d4 e1                                      ldrsb r3, [r4]
007a3d28  01 20 a0 e3                                      mov r2, #1
007a3d2c  07 10 8d e2                                      add r1, sp, #7
007a3d30  01 00 73 e3                                      cmn r3, #1
007a3d34  0c 00 94 05                                      ldreq r0, [r4, #0xc]
007a3d38  01 00 84 12                                      addne r0, r4, #1
007a3d3c  05 00 80 e0                                      add r0, r0, r5
007a3d40  37 a8 ed eb                                      bl #0x30de24
007a3d44  10 30 94 e5                                      ldr r3, [r4, #0x10]
007a3d48  00 20 e0 e3                                      mvn r2, #0
007a3d4c  12 30 d7 e7                                      bfi r3, r2, #0, #0x18
007a3d50  10 30 84 e5                                      str r3, [r4, #0x10]
007a3d54  0c d0 8d e2                                      add sp, sp, #0xc
007a3d58  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x007b7598, declared_size=104, range_size=104, mode=arm
; class-group: gameswf::tu_string
; alias: _ZN7gameswf9tu_stringC1EPKc.clone.0
; demangled: gameswf::tu_string::tu_string(char const*) [clone .clone.0]
; decoder-mode: arm
007b7598  01 30 a0 e3                                      mov r3, #1
007b759c  10 40 2d e9                                      push {r4, lr}
007b75a0  00 30 c0 e5                                      strb r3, [r0]
007b75a4  00 30 a0 e3                                      mov r3, #0
007b75a8  00 40 a0 e1                                      mov r4, r0
007b75ac  01 30 c0 e5                                      strb r3, [r0, #1]
007b75b0  03 10 a0 e3                                      mov r1, #3
007b75b4  d6 69 fe eb                                      bl #0x751d14
007b75b8  d0 30 d4 e1                                      ldrsb r3, [r4]
007b75bc  38 10 9f e5                                      ldr r1, [pc, #0x38]
007b75c0  04 20 a0 e3                                      mov r2, #4
007b75c4  01 00 73 e3                                      cmn r3, #1
007b75c8  01 00 84 12                                      addne r0, r4, #1
007b75cc  0c 00 94 05                                      ldreq r0, [r4, #0xc]
007b75d0  01 10 8f e0                                      add r1, pc, r1
007b75d4  a3 5c ed eb                                      bl #0x30e868
007b75d8  10 30 94 e5                                      ldr r3, [r4, #0x10]
007b75dc  00 20 e0 e3                                      mvn r2, #0
007b75e0  04 00 a0 e1                                      mov r0, r4
007b75e4  12 30 d7 e7                                      bfi r3, r2, #0, #0x18
007b75e8  23 2c a0 e1                                      lsr r2, r3, #0x18
007b75ec  1f 20 c0 e7                                      bfc r2, #0, #1
007b75f0  10 30 84 e5                                      str r3, [r4, #0x10]
007b75f4  13 20 c4 e5                                      strb r2, [r4, #0x13]
007b75f8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007b75fc  10 34 15 00                                      .byte 0x10, 0x34, 0x15, 0x00

; FUNCTION 0x007cef34, declared_size=104, range_size=104, mode=arm
; class-group: gameswf::tu_string
; alias: _ZN7gameswf9tu_stringC1EPKc.clone.0
; demangled: gameswf::tu_string::tu_string(char const*) [clone .clone.0]
; decoder-mode: arm
007cef34  01 30 a0 e3                                      mov r3, #1
007cef38  10 40 2d e9                                      push {r4, lr}
007cef3c  00 30 c0 e5                                      strb r3, [r0]
007cef40  00 30 a0 e3                                      mov r3, #0
007cef44  00 40 a0 e1                                      mov r4, r0
007cef48  01 30 c0 e5                                      strb r3, [r0, #1]
007cef4c  0f 10 a0 e3                                      mov r1, #0xf
007cef50  6f 0b fe eb                                      bl #0x751d14
007cef54  d0 30 d4 e1                                      ldrsb r3, [r4]
007cef58  38 10 9f e5                                      ldr r1, [pc, #0x38]
007cef5c  10 20 a0 e3                                      mov r2, #0x10
007cef60  01 00 73 e3                                      cmn r3, #1
007cef64  01 00 84 12                                      addne r0, r4, #1
007cef68  0c 00 94 05                                      ldreq r0, [r4, #0xc]
007cef6c  01 10 8f e0                                      add r1, pc, r1
007cef70  3c fe ec eb                                      bl #0x30e868
007cef74  10 30 94 e5                                      ldr r3, [r4, #0x10]
007cef78  00 20 e0 e3                                      mvn r2, #0
007cef7c  04 00 a0 e1                                      mov r0, r4
007cef80  12 30 d7 e7                                      bfi r3, r2, #0, #0x18
007cef84  23 2c a0 e1                                      lsr r2, r3, #0x18
007cef88  1f 20 c0 e7                                      bfc r2, #0, #1
007cef8c  10 30 84 e5                                      str r3, [r4, #0x10]
007cef90  13 20 c4 e5                                      strb r2, [r4, #0x13]
007cef94  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007cef98  0c d0 13 00                                      .byte 0x0c, 0xd0, 0x13, 0x00
