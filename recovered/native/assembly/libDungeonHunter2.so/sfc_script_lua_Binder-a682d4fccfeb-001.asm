; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00319af4, declared_size=336, range_size=336, mode=arm
; class-group: sfc::script::lua::Binder
; alias: _ZN3sfc6script3lua6Binder10bindMethodEPKcPFvRKNS1_9ArgumentsERNS1_12ReturnValuesEPvE
; demangled: sfc::script::lua::Binder::bindMethod(char const*, void (*)(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*))
; decoder-mode: arm
00319af4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00319af8  08 30 90 e5                                      ldr r3, [r0, #8]
00319afc  18 51 9f e5                                      ldr r5, [pc, #0x118]
00319b00  0c d0 4d e2                                      sub sp, sp, #0xc
00319b04  00 00 53 e3                                      cmp r3, #0
00319b08  00 40 a0 e1                                      mov r4, r0
00319b0c  01 70 a0 e1                                      mov r7, r1
00319b10  05 50 8f e0                                      add r5, pc, r5
00319b14  02 60 a0 e1                                      mov r6, r2
00319b18  3d 00 00 0a                                      beq #0x319c14
00319b1c  00 00 51 e3                                      cmp r1, #0
00319b20  11 00 00 0a                                      beq #0x319b6c
00319b24  00 00 56 e3                                      cmp r6, #0
00319b28  24 00 00 0a                                      beq #0x319bc0
00319b2c  07 10 a0 e1                                      mov r1, r7
00319b30  08 00 94 e5                                      ldr r0, [r4, #8]
00319b34  44 c9 14 eb                                      bl #0x84c04c
00319b38  06 10 a0 e1                                      mov r1, r6
00319b3c  08 00 94 e5                                      ldr r0, [r4, #8]
00319b40  61 c6 14 eb                                      bl #0x84b4cc
00319b44  d4 30 9f e5                                      ldr r3, [pc, #0xd4]
00319b48  08 00 94 e5                                      ldr r0, [r4, #8]
00319b4c  01 20 a0 e3                                      mov r2, #1
00319b50  03 10 95 e7                                      ldr r1, [r5, r3]
00319b54  60 c8 14 eb                                      bl #0x84bcdc
00319b58  08 00 94 e5                                      ldr r0, [r4, #8]
00319b5c  02 10 e0 e3                                      mvn r1, #2
00319b60  0c d0 8d e2                                      add sp, sp, #0xc
00319b64  f0 40 bd e8                                      pop {r4, r5, r6, r7, lr}
00319b68  5e c9 14 ea                                      b #0x84c0e8
00319b6c  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
00319b70  03 30 95 e7                                      ldr r3, [r5, r3]
00319b74  00 30 93 e5                                      ldr r3, [r3]
00319b78  02 00 53 e3                                      cmp r3, #2
00319b7c  00 10 81 05                                      streq r1, [r1]
00319b80  e7 ff ff 0a                                      beq #0x319b24
00319b84  01 00 53 e3                                      cmp r3, #1
00319b88  e5 ff ff 1a                                      bne #0x319b24
00319b8c  94 00 9f e5                                      ldr r0, [pc, #0x94]
00319b90  94 10 9f e5                                      ldr r1, [pc, #0x94]
00319b94  94 20 9f e5                                      ldr r2, [pc, #0x94]
00319b98  00 00 95 e7                                      ldr r0, [r5, r0]
00319b9c  90 30 9f e5                                      ldr r3, [pc, #0x90]
00319ba0  8b c0 a0 e3                                      mov ip, #0x8b
00319ba4  01 10 8f e0                                      add r1, pc, r1
00319ba8  02 20 8f e0                                      add r2, pc, r2
00319bac  03 30 8f e0                                      add r3, pc, r3
00319bb0  a8 00 80 e2                                      add r0, r0, #0xa8
00319bb4  00 c0 8d e5                                      str ip, [sp]
00319bb8  11 d1 ff eb                                      bl #0x30e004
00319bbc  d8 ff ff ea                                      b #0x319b24
00319bc0  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
00319bc4  03 30 95 e7                                      ldr r3, [r5, r3]
00319bc8  00 30 93 e5                                      ldr r3, [r3]
00319bcc  02 00 53 e3                                      cmp r3, #2
00319bd0  00 60 86 05                                      streq r6, [r6]
00319bd4  d4 ff ff 0a                                      beq #0x319b2c
00319bd8  01 00 53 e3                                      cmp r3, #1
00319bdc  d2 ff ff 1a                                      bne #0x319b2c
00319be0  40 00 9f e5                                      ldr r0, [pc, #0x40]
00319be4  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
00319be8  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
00319bec  00 00 95 e7                                      ldr r0, [r5, r0]
00319bf0  48 30 9f e5                                      ldr r3, [pc, #0x48]
00319bf4  8c c0 a0 e3                                      mov ip, #0x8c
00319bf8  01 10 8f e0                                      add r1, pc, r1
00319bfc  02 20 8f e0                                      add r2, pc, r2
00319c00  03 30 8f e0                                      add r3, pc, r3
00319c04  a8 00 80 e2                                      add r0, r0, #0xa8
00319c08  00 c0 8d e5                                      str ip, [sp]
00319c0c  fc d0 ff eb                                      bl #0x30e004
00319c10  c5 ff ff ea                                      b #0x319b2c
00319c14  0c d0 8d e2                                      add sp, sp, #0xc
00319c18  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
00319c1c  80 af 67 00 64 12 00 00 c0 39 00 00 c0 19 00 00  .byte 0x80, 0xaf, 0x67, 0x00, 0x64, 0x12, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
00319c2c  34 48 5a 00 20 4c 5a 00 2c 4c 5a 00 e0 47 5a 00  .byte 0x34, 0x48, 0x5a, 0x00, 0x20, 0x4c, 0x5a, 0x00, 0x2c, 0x4c, 0x5a, 0x00, 0xe0, 0x47, 0x5a, 0x00
00319c3c  24 4c 5a 00 d8 4b 5a 00                          .byte 0x24, 0x4c, 0x5a, 0x00, 0xd8, 0x4b, 0x5a, 0x00

; FUNCTION 0x00319c44, declared_size=100, range_size=100, mode=arm
; class-group: sfc::script::lua::Binder
; alias: _ZN3sfc6script3lua6Binder11_bindMethodEPKcPvS5_
; demangled: sfc::script::lua::Binder::_bindMethod(char const*, void*, void*)
; decoder-mode: arm
00319c44  70 40 2d e9                                      push {r4, r5, r6, lr}
00319c48  00 40 a0 e1                                      mov r4, r0
00319c4c  02 50 a0 e1                                      mov r5, r2
00319c50  08 00 90 e5                                      ldr r0, [r0, #8]
00319c54  03 60 a0 e1                                      mov r6, r3
00319c58  fb c8 14 eb                                      bl #0x84c04c
00319c5c  05 10 a0 e1                                      mov r1, r5
00319c60  08 00 94 e5                                      ldr r0, [r4, #8]
00319c64  18 c6 14 eb                                      bl #0x84b4cc
00319c68  30 50 9f e5                                      ldr r5, [pc, #0x30]
00319c6c  06 10 a0 e1                                      mov r1, r6
00319c70  08 00 94 e5                                      ldr r0, [r4, #8]
00319c74  14 c6 14 eb                                      bl #0x84b4cc
00319c78  24 30 9f e5                                      ldr r3, [pc, #0x24]
00319c7c  05 50 8f e0                                      add r5, pc, r5
00319c80  08 00 94 e5                                      ldr r0, [r4, #8]
00319c84  03 10 95 e7                                      ldr r1, [r5, r3]
00319c88  02 20 a0 e3                                      mov r2, #2
00319c8c  12 c8 14 eb                                      bl #0x84bcdc
00319c90  08 00 94 e5                                      ldr r0, [r4, #8]
00319c94  02 10 e0 e3                                      mvn r1, #2
00319c98  70 40 bd e8                                      pop {r4, r5, r6, lr}
00319c9c  11 c9 14 ea                                      b #0x84c0e8
; mapping-symbol data/literal pool
00319ca0  14 ae 67 00 bc 39 00 00                          .byte 0x14, 0xae, 0x67, 0x00, 0xbc, 0x39, 0x00, 0x00

; FUNCTION 0x00319ca8, declared_size=808, range_size=808, mode=arm
; class-group: sfc::script::lua::Binder
; alias: _ZN3sfc6script3lua6Binder16__methodCallbackEP9lua_State
; demangled: sfc::script::lua::Binder::__methodCallback(lua_State*)
; decoder-mode: arm
00319ca8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00319cac  dc 42 9f e5                                      ldr r4, [pc, #0x2dc]
00319cb0  dc 22 9f e5                                      ldr r2, [pc, #0x2dc]
00319cb4  5c d0 4d e2                                      sub sp, sp, #0x5c
00319cb8  04 40 8f e0                                      add r4, pc, r4
00319cbc  02 30 94 e7                                      ldr r3, [r4, r2]
00319cc0  01 10 a0 e3                                      mov r1, #1
00319cc4  0c 20 8d e5                                      str r2, [sp, #0xc]
00319cc8  00 30 93 e5                                      ldr r3, [r3]
00319ccc  00 50 a0 e1                                      mov r5, r0
00319cd0  54 30 8d e5                                      str r3, [sp, #0x54]
00319cd4  62 c5 14 eb                                      bl #0x84b264
00319cd8  05 00 50 e3                                      cmp r0, #5
00319cdc  08 00 00 0a                                      beq #0x319d04
00319ce0  b0 32 9f e5                                      ldr r3, [pc, #0x2b0]
00319ce4  03 30 94 e7                                      ldr r3, [r4, r3]
00319ce8  00 30 93 e5                                      ldr r3, [r3]
00319cec  02 00 53 e3                                      cmp r3, #2
00319cf0  00 30 a0 03                                      moveq r3, #0
00319cf4  00 30 83 05                                      streq r3, [r3]
00319cf8  01 00 00 0a                                      beq #0x319d04
00319cfc  01 00 53 e3                                      cmp r3, #1
00319d00  61 00 00 0a                                      beq #0x319e8c
00319d04  90 22 9f e5                                      ldr r2, [pc, #0x290]
00319d08  01 10 a0 e3                                      mov r1, #1
00319d0c  05 00 a0 e1                                      mov r0, r5
00319d10  02 20 8f e0                                      add r2, pc, r2
00319d14  34 c9 14 eb                                      bl #0x84c1ec
00319d18  00 10 e0 e3                                      mvn r1, #0
00319d1c  05 00 a0 e1                                      mov r0, r5
00319d20  9a c5 14 eb                                      bl #0x84b390
00319d24  24 80 8d e2                                      add r8, sp, #0x24
00319d28  01 10 e0 e3                                      mvn r1, #1
00319d2c  00 90 a0 e1                                      mov sb, r0
00319d30  05 00 a0 e1                                      mov r0, r5
00319d34  01 c5 14 eb                                      bl #0x84b140
00319d38  1c b0 8d e2                                      add fp, sp, #0x1c
00319d3c  05 10 a0 e1                                      mov r1, r5
00319d40  00 20 e0 e3                                      mvn r2, #0
00319d44  08 00 a0 e1                                      mov r0, r8
00319d48  67 fe ff eb                                      bl #0x3196ec
00319d4c  2c 60 8d e2                                      add r6, sp, #0x2c
00319d50  02 20 a0 e3                                      mov r2, #2
00319d54  05 10 a0 e1                                      mov r1, r5
00319d58  0b 00 a0 e1                                      mov r0, fp
00319d5c  62 fe ff eb                                      bl #0x3196ec
00319d60  06 00 a0 e1                                      mov r0, r6
00319d64  b2 05 00 eb                                      bl #0x31b434
00319d68  20 70 9d e5                                      ldr r7, [sp, #0x20]
00319d6c  00 30 a0 e3                                      mov r3, #0
00319d70  18 30 8d e5                                      str r3, [sp, #0x18]
00319d74  14 30 8d e5                                      str r3, [sp, #0x14]
00319d78  09 00 97 e8                                      ldm r7, {r0, r3}
00319d7c  03 30 60 e0                                      rsb r3, r0, r3
00319d80  43 32 a0 e1                                      asr r3, r3, #4
00319d84  83 21 83 e0                                      add r2, r3, r3, lsl #3
00319d88  02 23 82 e0                                      add r2, r2, r2, lsl #6
00319d8c  82 21 83 e0                                      add r2, r3, r2, lsl #3
00319d90  82 27 82 e0                                      add r2, r2, r2, lsl #15
00319d94  82 31 83 e0                                      add r3, r3, r2, lsl #3
00319d98  00 00 53 e3                                      cmp r3, #0
00319d9c  03 00 00 1a                                      bne #0x319db0
00319da0  f8 01 9f e5                                      ldr r0, [pc, #0x1f8]
00319da4  00 00 8f e0                                      add r0, pc, r0
00319da8  40 bc 0f eb                                      bl #0x708eb0
00319dac  00 00 97 e5                                      ldr r0, [r7]
00319db0  f2 05 00 eb                                      bl #0x31b580
00319db4  20 70 9d e5                                      ldr r7, [sp, #0x20]
00319db8  14 00 8d e5                                      str r0, [sp, #0x14]
00319dbc  09 00 97 e8                                      ldm r7, {r0, r3}
00319dc0  03 30 60 e0                                      rsb r3, r0, r3
00319dc4  43 32 a0 e1                                      asr r3, r3, #4
00319dc8  83 21 83 e0                                      add r2, r3, r3, lsl #3
00319dcc  02 23 82 e0                                      add r2, r2, r2, lsl #6
00319dd0  82 21 83 e0                                      add r2, r3, r2, lsl #3
00319dd4  82 27 82 e0                                      add r2, r2, r2, lsl #15
00319dd8  82 31 83 e0                                      add r3, r3, r2, lsl #3
00319ddc  00 30 63 e2                                      rsb r3, r3, #0
00319de0  01 00 53 e3                                      cmp r3, #1
00319de4  03 00 00 8a                                      bhi #0x319df8
00319de8  b4 01 9f e5                                      ldr r0, [pc, #0x1b4]
00319dec  00 00 8f e0                                      add r0, pc, r0
00319df0  2e bc 0f eb                                      bl #0x708eb0
00319df4  00 00 97 e5                                      ldr r0, [r7]
00319df8  70 00 80 e2                                      add r0, r0, #0x70
00319dfc  df 05 00 eb                                      bl #0x31b580
00319e00  14 a0 9d e5                                      ldr sl, [sp, #0x14]
00319e04  00 70 a0 e1                                      mov r7, r0
00319e08  18 00 8d e5                                      str r0, [sp, #0x18]
00319e0c  00 00 5a e3                                      cmp sl, #0
00319e10  01 c0 00 12                                      andne ip, r0, #1
00319e14  29 00 00 0a                                      beq #0x319ec0
00319e18  00 00 59 e3                                      cmp sb, #0
00319e1c  35 00 00 0a                                      beq #0x319ef8
00319e20  00 00 5c e3                                      cmp ip, #0
00319e24  c7 30 99 17                                      ldrne r3, [sb, r7, asr #1]
00319e28  c7 00 89 00                                      addeq r0, sb, r7, asr #1
00319e2c  c7 00 89 10                                      addne r0, sb, r7, asr #1
00319e30  0a a0 93 17                                      ldrne sl, [r3, sl]
00319e34  06 20 a0 e1                                      mov r2, r6
00319e38  08 10 a0 e1                                      mov r1, r8
00319e3c  3a ff 2f e1                                      blx sl
00319e40  05 10 a0 e1                                      mov r1, r5
00319e44  06 00 a0 e1                                      mov r0, r6
00319e48  2e 05 00 eb                                      bl #0x31b308
00319e4c  00 50 a0 e1                                      mov r5, r0
00319e50  06 00 a0 e1                                      mov r0, r6
00319e54  4f 05 00 eb                                      bl #0x31b398
00319e58  0b 00 a0 e1                                      mov r0, fp
00319e5c  f1 fc ff eb                                      bl #0x319228
00319e60  08 00 a0 e1                                      mov r0, r8
00319e64  ef fc ff eb                                      bl #0x319228
00319e68  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00319e6c  05 00 a0 e1                                      mov r0, r5
00319e70  02 30 94 e7                                      ldr r3, [r4, r2]
00319e74  54 20 9d e5                                      ldr r2, [sp, #0x54]
00319e78  00 30 93 e5                                      ldr r3, [r3]
00319e7c  03 00 52 e1                                      cmp r2, r3
00319e80  41 00 00 1a                                      bne #0x319f8c
00319e84  5c d0 8d e2                                      add sp, sp, #0x5c
00319e88  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00319e8c  14 01 9f e5                                      ldr r0, [pc, #0x114]
00319e90  14 11 9f e5                                      ldr r1, [pc, #0x114]
00319e94  14 21 9f e5                                      ldr r2, [pc, #0x114]
00319e98  00 00 94 e7                                      ldr r0, [r4, r0]
00319e9c  10 31 9f e5                                      ldr r3, [pc, #0x110]
00319ea0  48 c0 a0 e3                                      mov ip, #0x48
00319ea4  01 10 8f e0                                      add r1, pc, r1
00319ea8  02 20 8f e0                                      add r2, pc, r2
00319eac  03 30 8f e0                                      add r3, pc, r3
00319eb0  a8 00 80 e2                                      add r0, r0, #0xa8
00319eb4  00 c0 8d e5                                      str ip, [sp]
00319eb8  51 d0 ff eb                                      bl #0x30e004
00319ebc  90 ff ff ea                                      b #0x319d04
00319ec0  01 00 10 e3                                      tst r0, #1
00319ec4  01 c0 a0 13                                      movne ip, #1
00319ec8  d2 ff ff 1a                                      bne #0x319e18
00319ecc  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
00319ed0  03 30 94 e7                                      ldr r3, [r4, r3]
00319ed4  00 30 93 e5                                      ldr r3, [r3]
00319ed8  02 00 53 e3                                      cmp r3, #2
00319edc  00 a0 8a 05                                      streq sl, [sl]
00319ee0  0a c0 a0 01                                      moveq ip, sl
00319ee4  cb ff ff 0a                                      beq #0x319e18
00319ee8  01 00 53 e3                                      cmp r3, #1
00319eec  18 00 00 0a                                      beq #0x319f54
00319ef0  0a c0 a0 e1                                      mov ip, sl
00319ef4  c7 ff ff ea                                      b #0x319e18
00319ef8  98 30 9f e5                                      ldr r3, [pc, #0x98]
00319efc  03 30 94 e7                                      ldr r3, [r4, r3]
00319f00  00 30 93 e5                                      ldr r3, [r3]
00319f04  02 00 53 e3                                      cmp r3, #2
00319f08  00 90 89 05                                      streq sb, [sb]
00319f0c  c3 ff ff 0a                                      beq #0x319e20
00319f10  01 00 53 e3                                      cmp r3, #1
00319f14  c1 ff ff 1a                                      bne #0x319e20
00319f18  88 00 9f e5                                      ldr r0, [pc, #0x88]
00319f1c  94 10 9f e5                                      ldr r1, [pc, #0x94]
00319f20  94 20 9f e5                                      ldr r2, [pc, #0x94]
00319f24  00 00 94 e7                                      ldr r0, [r4, r0]
00319f28  90 30 9f e5                                      ldr r3, [pc, #0x90]
00319f2c  57 e0 a0 e3                                      mov lr, #0x57
00319f30  01 10 8f e0                                      add r1, pc, r1
00319f34  a8 00 80 e2                                      add r0, r0, #0xa8
00319f38  02 20 8f e0                                      add r2, pc, r2
00319f3c  03 30 8f e0                                      add r3, pc, r3
00319f40  08 c0 8d e5                                      str ip, [sp, #8]
00319f44  00 e0 8d e5                                      str lr, [sp]
00319f48  2d d0 ff eb                                      bl #0x30e004
00319f4c  08 c0 9d e5                                      ldr ip, [sp, #8]
00319f50  b2 ff ff ea                                      b #0x319e20
00319f54  4c 00 9f e5                                      ldr r0, [pc, #0x4c]
00319f58  64 10 9f e5                                      ldr r1, [pc, #0x64]
00319f5c  64 20 9f e5                                      ldr r2, [pc, #0x64]
00319f60  00 00 94 e7                                      ldr r0, [r4, r0]
00319f64  60 30 9f e5                                      ldr r3, [pc, #0x60]
00319f68  56 c0 a0 e3                                      mov ip, #0x56
00319f6c  01 10 8f e0                                      add r1, pc, r1
00319f70  a8 00 80 e2                                      add r0, r0, #0xa8
00319f74  02 20 8f e0                                      add r2, pc, r2
00319f78  03 30 8f e0                                      add r3, pc, r3
00319f7c  00 c0 8d e5                                      str ip, [sp]
00319f80  1f d0 ff eb                                      bl #0x30e004
00319f84  0a c0 a0 e1                                      mov ip, sl
00319f88  a2 ff ff ea                                      b #0x319e18
00319f8c  df d0 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00319f90  d8 ad 67 00 ac 40 00 00 c0 39 00 00 40 4b 5a 00  .byte 0xd8, 0xad, 0x67, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0x40, 0x4b, 0x5a, 0x00
00319fa0  c4 46 5a 00 7c 46 5a 00 c0 19 00 00 34 45 5a 00  .byte 0xc4, 0x46, 0x5a, 0x00, 0x7c, 0x46, 0x5a, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x34, 0x45, 0x5a, 0x00
00319fb0  88 49 5a 00 2c 49 5a 00 a8 44 5a 00 18 49 5a 00  .byte 0x88, 0x49, 0x5a, 0x00, 0x2c, 0x49, 0x5a, 0x00, 0xa8, 0x44, 0x5a, 0x00, 0x18, 0x49, 0x5a, 0x00
00319fc0  9c 48 5a 00 6c 44 5a 00 e4 48 5a 00 60 48 5a 00  .byte 0x9c, 0x48, 0x5a, 0x00, 0x6c, 0x44, 0x5a, 0x00, 0xe4, 0x48, 0x5a, 0x00, 0x60, 0x48, 0x5a, 0x00

; FUNCTION 0x00319fd0, declared_size=640, range_size=640, mode=arm
; class-group: sfc::script::lua::Binder
; alias: _ZN3sfc6script3lua6Binder17__smethodCallbackEP9lua_State
; demangled: sfc::script::lua::Binder::__smethodCallback(lua_State*)
; decoder-mode: arm
00319fd0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00319fd4  38 42 9f e5                                      ldr r4, [pc, #0x238]
00319fd8  38 92 9f e5                                      ldr sb, [pc, #0x238]
00319fdc  4c d0 4d e2                                      sub sp, sp, #0x4c
00319fe0  04 40 8f e0                                      add r4, pc, r4
00319fe4  09 30 94 e7                                      ldr r3, [r4, sb]
00319fe8  01 10 a0 e3                                      mov r1, #1
00319fec  00 50 a0 e1                                      mov r5, r0
00319ff0  00 30 93 e5                                      ldr r3, [r3]
00319ff4  44 30 8d e5                                      str r3, [sp, #0x44]
00319ff8  99 c4 14 eb                                      bl #0x84b264
00319ffc  05 00 50 e3                                      cmp r0, #5
0031a000  08 00 00 0a                                      beq #0x31a028
0031a004  10 32 9f e5                                      ldr r3, [pc, #0x210]
0031a008  03 30 94 e7                                      ldr r3, [r4, r3]
0031a00c  00 30 93 e5                                      ldr r3, [r3]
0031a010  02 00 53 e3                                      cmp r3, #2
0031a014  00 30 a0 03                                      moveq r3, #0
0031a018  00 30 83 05                                      streq r3, [r3]
0031a01c  01 00 00 0a                                      beq #0x31a028
0031a020  01 00 53 e3                                      cmp r3, #1
0031a024  57 00 00 0a                                      beq #0x31a188
0031a028  f0 21 9f e5                                      ldr r2, [pc, #0x1f0]
0031a02c  01 10 a0 e3                                      mov r1, #1
0031a030  05 00 a0 e1                                      mov r0, r5
0031a034  02 20 8f e0                                      add r2, pc, r2
0031a038  6b c8 14 eb                                      bl #0x84c1ec
0031a03c  00 10 e0 e3                                      mvn r1, #0
0031a040  05 00 a0 e1                                      mov r0, r5
0031a044  d1 c4 14 eb                                      bl #0x84b390
0031a048  14 70 8d e2                                      add r7, sp, #0x14
0031a04c  01 10 e0 e3                                      mvn r1, #1
0031a050  00 80 a0 e1                                      mov r8, r0
0031a054  05 00 a0 e1                                      mov r0, r5
0031a058  38 c4 14 eb                                      bl #0x84b140
0031a05c  0c a0 8d e2                                      add sl, sp, #0xc
0031a060  05 10 a0 e1                                      mov r1, r5
0031a064  00 20 e0 e3                                      mvn r2, #0
0031a068  07 00 a0 e1                                      mov r0, r7
0031a06c  9e fd ff eb                                      bl #0x3196ec
0031a070  1c 60 8d e2                                      add r6, sp, #0x1c
0031a074  01 20 a0 e3                                      mov r2, #1
0031a078  05 10 a0 e1                                      mov r1, r5
0031a07c  0a 00 a0 e1                                      mov r0, sl
0031a080  99 fd ff eb                                      bl #0x3196ec
0031a084  06 00 a0 e1                                      mov r0, r6
0031a088  e9 04 00 eb                                      bl #0x31b434
0031a08c  10 b0 9d e5                                      ldr fp, [sp, #0x10]
0031a090  09 00 9b e8                                      ldm fp, {r0, r3}
0031a094  03 30 60 e0                                      rsb r3, r0, r3
0031a098  43 32 a0 e1                                      asr r3, r3, #4
0031a09c  83 21 83 e0                                      add r2, r3, r3, lsl #3
0031a0a0  02 23 82 e0                                      add r2, r2, r2, lsl #6
0031a0a4  82 21 83 e0                                      add r2, r3, r2, lsl #3
0031a0a8  82 27 82 e0                                      add r2, r2, r2, lsl #15
0031a0ac  82 31 83 e0                                      add r3, r3, r2, lsl #3
0031a0b0  00 00 53 e3                                      cmp r3, #0
0031a0b4  03 00 00 1a                                      bne #0x31a0c8
0031a0b8  64 01 9f e5                                      ldr r0, [pc, #0x164]
0031a0bc  00 00 8f e0                                      add r0, pc, r0
0031a0c0  7a bb 0f eb                                      bl #0x708eb0
0031a0c4  00 00 9b e5                                      ldr r0, [fp]
0031a0c8  2c 05 00 eb                                      bl #0x31b580
0031a0cc  00 b0 50 e2                                      subs fp, r0, #0
0031a0d0  39 00 00 0a                                      beq #0x31a1bc
0031a0d4  00 00 58 e3                                      cmp r8, #0
0031a0d8  15 00 00 0a                                      beq #0x31a134
0031a0dc  08 20 a0 e1                                      mov r2, r8
0031a0e0  07 00 a0 e1                                      mov r0, r7
0031a0e4  06 10 a0 e1                                      mov r1, r6
0031a0e8  3b ff 2f e1                                      blx fp
0031a0ec  05 10 a0 e1                                      mov r1, r5
0031a0f0  06 00 a0 e1                                      mov r0, r6
0031a0f4  83 04 00 eb                                      bl #0x31b308
0031a0f8  00 50 a0 e1                                      mov r5, r0
0031a0fc  06 00 a0 e1                                      mov r0, r6
0031a100  a4 04 00 eb                                      bl #0x31b398
0031a104  0a 00 a0 e1                                      mov r0, sl
0031a108  46 fc ff eb                                      bl #0x319228
0031a10c  07 00 a0 e1                                      mov r0, r7
0031a110  44 fc ff eb                                      bl #0x319228
0031a114  09 30 94 e7                                      ldr r3, [r4, sb]
0031a118  44 20 9d e5                                      ldr r2, [sp, #0x44]
0031a11c  05 00 a0 e1                                      mov r0, r5
0031a120  00 30 93 e5                                      ldr r3, [r3]
0031a124  03 00 52 e1                                      cmp r2, r3
0031a128  38 00 00 1a                                      bne #0x31a210
0031a12c  4c d0 8d e2                                      add sp, sp, #0x4c
0031a130  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0031a134  e0 30 9f e5                                      ldr r3, [pc, #0xe0]
0031a138  03 30 94 e7                                      ldr r3, [r4, r3]
0031a13c  00 30 93 e5                                      ldr r3, [r3]
0031a140  02 00 53 e3                                      cmp r3, #2
0031a144  00 80 88 05                                      streq r8, [r8]
0031a148  e3 ff ff 0a                                      beq #0x31a0dc
0031a14c  01 00 53 e3                                      cmp r3, #1
0031a150  e1 ff ff 1a                                      bne #0x31a0dc
0031a154  cc 00 9f e5                                      ldr r0, [pc, #0xcc]
0031a158  cc 10 9f e5                                      ldr r1, [pc, #0xcc]
0031a15c  cc 20 9f e5                                      ldr r2, [pc, #0xcc]
0031a160  00 00 94 e7                                      ldr r0, [r4, r0]
0031a164  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
0031a168  3a c0 a0 e3                                      mov ip, #0x3a
0031a16c  01 10 8f e0                                      add r1, pc, r1
0031a170  02 20 8f e0                                      add r2, pc, r2
0031a174  03 30 8f e0                                      add r3, pc, r3
0031a178  a8 00 80 e2                                      add r0, r0, #0xa8
0031a17c  00 c0 8d e5                                      str ip, [sp]
0031a180  9f cf ff eb                                      bl #0x30e004
0031a184  d4 ff ff ea                                      b #0x31a0dc
0031a188  98 00 9f e5                                      ldr r0, [pc, #0x98]
0031a18c  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
0031a190  a4 20 9f e5                                      ldr r2, [pc, #0xa4]
0031a194  00 00 94 e7                                      ldr r0, [r4, r0]
0031a198  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
0031a19c  2e c0 a0 e3                                      mov ip, #0x2e
0031a1a0  01 10 8f e0                                      add r1, pc, r1
0031a1a4  02 20 8f e0                                      add r2, pc, r2
0031a1a8  03 30 8f e0                                      add r3, pc, r3
0031a1ac  a8 00 80 e2                                      add r0, r0, #0xa8
0031a1b0  00 c0 8d e5                                      str ip, [sp]
0031a1b4  92 cf ff eb                                      bl #0x30e004
0031a1b8  9a ff ff ea                                      b #0x31a028
0031a1bc  58 30 9f e5                                      ldr r3, [pc, #0x58]
0031a1c0  03 30 94 e7                                      ldr r3, [r4, r3]
0031a1c4  00 30 93 e5                                      ldr r3, [r3]
0031a1c8  02 00 53 e3                                      cmp r3, #2
0031a1cc  00 b0 8b 05                                      streq fp, [fp]
0031a1d0  bf ff ff 0a                                      beq #0x31a0d4
0031a1d4  01 00 53 e3                                      cmp r3, #1
0031a1d8  bd ff ff 1a                                      bne #0x31a0d4
0031a1dc  44 00 9f e5                                      ldr r0, [pc, #0x44]
0031a1e0  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
0031a1e4  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
0031a1e8  00 00 94 e7                                      ldr r0, [r4, r0]
0031a1ec  58 30 9f e5                                      ldr r3, [pc, #0x58]
0031a1f0  39 c0 a0 e3                                      mov ip, #0x39
0031a1f4  01 10 8f e0                                      add r1, pc, r1
0031a1f8  02 20 8f e0                                      add r2, pc, r2
0031a1fc  03 30 8f e0                                      add r3, pc, r3
0031a200  a8 00 80 e2                                      add r0, r0, #0xa8
0031a204  00 c0 8d e5                                      str ip, [sp]
0031a208  7d cf ff eb                                      bl #0x30e004
0031a20c  b0 ff ff ea                                      b #0x31a0d4
0031a210  3e d0 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0031a214  b0 aa 67 00 ac 40 00 00 c0 39 00 00 1c 48 5a 00  .byte 0xb0, 0xaa, 0x67, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0x1c, 0x48, 0x5a, 0x00
0031a224  ac 43 5a 00 c0 19 00 00 6c 42 5a 00 e0 46 5a 00  .byte 0xac, 0x43, 0x5a, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x6c, 0x42, 0x5a, 0x00, 0xe0, 0x46, 0x5a, 0x00
0031a234  64 46 5a 00 38 42 5a 00 8c 46 5a 00 30 46 5a 00  .byte 0x64, 0x46, 0x5a, 0x00, 0x38, 0x42, 0x5a, 0x00, 0x8c, 0x46, 0x5a, 0x00, 0x30, 0x46, 0x5a, 0x00
0031a244  e4 41 5a 00 28 46 5a 00 dc 45 5a 00              .byte 0xe4, 0x41, 0x5a, 0x00, 0x28, 0x46, 0x5a, 0x00, 0xdc, 0x45, 0x5a, 0x00

; FUNCTION 0x0031a250, declared_size=452, range_size=452, mode=arm
; class-group: sfc::script::lua::Binder
; alias: _ZN3sfc6script3lua6Binder18__functionCallbackEP9lua_State
; demangled: sfc::script::lua::Binder::__functionCallback(lua_State*)
; decoder-mode: arm
0031a250  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0031a254  94 41 9f e5                                      ldr r4, [pc, #0x194]
0031a258  94 91 9f e5                                      ldr sb, [pc, #0x194]
0031a25c  4c d0 4d e2                                      sub sp, sp, #0x4c
0031a260  04 40 8f e0                                      add r4, pc, r4
0031a264  09 30 94 e7                                      ldr r3, [r4, sb]
0031a268  14 60 8d e2                                      add r6, sp, #0x14
0031a26c  00 10 a0 e1                                      mov r1, r0
0031a270  00 30 93 e5                                      ldr r3, [r3]
0031a274  00 70 a0 e1                                      mov r7, r0
0031a278  00 20 a0 e3                                      mov r2, #0
0031a27c  06 00 a0 e1                                      mov r0, r6
0031a280  0c a0 8d e2                                      add sl, sp, #0xc
0031a284  44 30 8d e5                                      str r3, [sp, #0x44]
0031a288  1c 50 8d e2                                      add r5, sp, #0x1c
0031a28c  16 fd ff eb                                      bl #0x3196ec
0031a290  02 20 a0 e3                                      mov r2, #2
0031a294  07 10 a0 e1                                      mov r1, r7
0031a298  0a 00 a0 e1                                      mov r0, sl
0031a29c  12 fd ff eb                                      bl #0x3196ec
0031a2a0  05 00 a0 e1                                      mov r0, r5
0031a2a4  62 04 00 eb                                      bl #0x31b434
0031a2a8  10 80 9d e5                                      ldr r8, [sp, #0x10]
0031a2ac  09 00 98 e8                                      ldm r8, {r0, r3}
0031a2b0  03 30 60 e0                                      rsb r3, r0, r3
0031a2b4  43 32 a0 e1                                      asr r3, r3, #4
0031a2b8  83 21 83 e0                                      add r2, r3, r3, lsl #3
0031a2bc  02 23 82 e0                                      add r2, r2, r2, lsl #6
0031a2c0  82 21 83 e0                                      add r2, r3, r2, lsl #3
0031a2c4  82 27 82 e0                                      add r2, r2, r2, lsl #15
0031a2c8  82 31 83 e0                                      add r3, r3, r2, lsl #3
0031a2cc  00 00 53 e3                                      cmp r3, #0
0031a2d0  03 00 00 1a                                      bne #0x31a2e4
0031a2d4  1c 01 9f e5                                      ldr r0, [pc, #0x11c]
0031a2d8  00 00 8f e0                                      add r0, pc, r0
0031a2dc  f3 ba 0f eb                                      bl #0x708eb0
0031a2e0  00 00 98 e5                                      ldr r0, [r8]
0031a2e4  a5 04 00 eb                                      bl #0x31b580
0031a2e8  10 b0 9d e5                                      ldr fp, [sp, #0x10]
0031a2ec  00 80 a0 e1                                      mov r8, r0
0031a2f0  09 00 9b e8                                      ldm fp, {r0, r3}
0031a2f4  03 30 60 e0                                      rsb r3, r0, r3
0031a2f8  43 32 a0 e1                                      asr r3, r3, #4
0031a2fc  83 21 83 e0                                      add r2, r3, r3, lsl #3
0031a300  02 23 82 e0                                      add r2, r2, r2, lsl #6
0031a304  82 21 83 e0                                      add r2, r3, r2, lsl #3
0031a308  82 27 82 e0                                      add r2, r2, r2, lsl #15
0031a30c  82 31 83 e0                                      add r3, r3, r2, lsl #3
0031a310  00 30 63 e2                                      rsb r3, r3, #0
0031a314  01 00 53 e3                                      cmp r3, #1
0031a318  03 00 00 8a                                      bhi #0x31a32c
0031a31c  d8 00 9f e5                                      ldr r0, [pc, #0xd8]
0031a320  00 00 8f e0                                      add r0, pc, r0
0031a324  e1 ba 0f eb                                      bl #0x708eb0
0031a328  00 00 9b e5                                      ldr r0, [fp]
0031a32c  70 00 80 e2                                      add r0, r0, #0x70
0031a330  92 04 00 eb                                      bl #0x31b580
0031a334  00 00 58 e3                                      cmp r8, #0
0031a338  00 b0 a0 e1                                      mov fp, r0
0031a33c  15 00 00 0a                                      beq #0x31a398
0031a340  0b 20 a0 e1                                      mov r2, fp
0031a344  06 00 a0 e1                                      mov r0, r6
0031a348  05 10 a0 e1                                      mov r1, r5
0031a34c  38 ff 2f e1                                      blx r8
0031a350  07 10 a0 e1                                      mov r1, r7
0031a354  05 00 a0 e1                                      mov r0, r5
0031a358  ea 03 00 eb                                      bl #0x31b308
0031a35c  00 70 a0 e1                                      mov r7, r0
0031a360  05 00 a0 e1                                      mov r0, r5
0031a364  0b 04 00 eb                                      bl #0x31b398
0031a368  0a 00 a0 e1                                      mov r0, sl
0031a36c  ad fb ff eb                                      bl #0x319228
0031a370  06 00 a0 e1                                      mov r0, r6
0031a374  ab fb ff eb                                      bl #0x319228
0031a378  09 30 94 e7                                      ldr r3, [r4, sb]
0031a37c  44 20 9d e5                                      ldr r2, [sp, #0x44]
0031a380  07 00 a0 e1                                      mov r0, r7
0031a384  00 30 93 e5                                      ldr r3, [r3]
0031a388  03 00 52 e1                                      cmp r2, r3
0031a38c  16 00 00 1a                                      bne #0x31a3ec
0031a390  4c d0 8d e2                                      add sp, sp, #0x4c
0031a394  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0031a398  60 30 9f e5                                      ldr r3, [pc, #0x60]
0031a39c  03 30 94 e7                                      ldr r3, [r4, r3]
0031a3a0  00 30 93 e5                                      ldr r3, [r3]
0031a3a4  02 00 53 e3                                      cmp r3, #2
0031a3a8  00 80 88 05                                      streq r8, [r8]
0031a3ac  e3 ff ff 0a                                      beq #0x31a340
0031a3b0  01 00 53 e3                                      cmp r3, #1
0031a3b4  e1 ff ff 1a                                      bne #0x31a340
0031a3b8  44 00 9f e5                                      ldr r0, [pc, #0x44]
0031a3bc  44 10 9f e5                                      ldr r1, [pc, #0x44]
0031a3c0  44 20 9f e5                                      ldr r2, [pc, #0x44]
0031a3c4  00 00 94 e7                                      ldr r0, [r4, r0]
0031a3c8  40 30 9f e5                                      ldr r3, [pc, #0x40]
0031a3cc  20 c0 a0 e3                                      mov ip, #0x20
0031a3d0  01 10 8f e0                                      add r1, pc, r1
0031a3d4  02 20 8f e0                                      add r2, pc, r2
0031a3d8  03 30 8f e0                                      add r3, pc, r3
0031a3dc  a8 00 80 e2                                      add r0, r0, #0xa8
0031a3e0  00 c0 8d e5                                      str ip, [sp]
0031a3e4  06 cf ff eb                                      bl #0x30e004
0031a3e8  d4 ff ff ea                                      b #0x31a340
0031a3ec  c7 cf ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0031a3f0  30 a8 67 00 ac 40 00 00 90 41 5a 00 48 41 5a 00  .byte 0x30, 0xa8, 0x67, 0x00, 0xac, 0x40, 0x00, 0x00, 0x90, 0x41, 0x5a, 0x00, 0x48, 0x41, 0x5a, 0x00
0031a400  c0 39 00 00 c0 19 00 00 08 40 5a 00 4c 44 5a 00  .byte 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x08, 0x40, 0x5a, 0x00, 0x4c, 0x44, 0x5a, 0x00
0031a410  00 44 5a 00                                      .byte 0x00, 0x44, 0x5a, 0x00

; FUNCTION 0x0031a4d4, declared_size=344, range_size=344, mode=arm
; class-group: sfc::script::lua::Binder
; alias: _ZN3sfc6script3lua6Binder12bindFunctionEPKcPFvRKNS1_9ArgumentsERNS1_12ReturnValuesEPvESA_
; demangled: sfc::script::lua::Binder::bindFunction(char const*, void (*)(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*), void*)
; decoder-mode: arm
0031a4d4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0031a4d8  00 60 a0 e1                                      mov r6, r0
0031a4dc  04 00 90 e5                                      ldr r0, [r0, #4]
0031a4e0  1c 51 9f e5                                      ldr r5, [pc, #0x11c]
0031a4e4  14 d0 4d e2                                      sub sp, sp, #0x14
0031a4e8  00 00 50 e3                                      cmp r0, #0
0031a4ec  05 50 8f e0                                      add r5, pc, r5
0031a4f0  01 80 a0 e1                                      mov r8, r1
0031a4f4  02 70 a0 e1                                      mov r7, r2
0031a4f8  03 a0 a0 e1                                      mov sl, r3
0031a4fc  14 00 00 0a                                      beq #0x31a554
0031a500  00 00 51 e3                                      cmp r1, #0
0031a504  14 00 00 0a                                      beq #0x31a55c
0031a508  00 00 57 e3                                      cmp r7, #0
0031a50c  27 00 00 0a                                      beq #0x31a5b0
0031a510  08 40 8d e2                                      add r4, sp, #8
0031a514  04 00 a0 e1                                      mov r0, r4
0031a518  65 fb ff eb                                      bl #0x3192b4
0031a51c  04 00 a0 e1                                      mov r0, r4
0031a520  07 10 a0 e1                                      mov r1, r7
0031a524  d0 ff ff eb                                      bl #0x31a46c
0031a528  04 00 a0 e1                                      mov r0, r4
0031a52c  0a 10 a0 e1                                      mov r1, sl
0031a530  cd ff ff eb                                      bl #0x31a46c
0031a534  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
0031a538  04 00 96 e5                                      ldr r0, [r6, #4]
0031a53c  08 10 a0 e1                                      mov r1, r8
0031a540  03 20 95 e7                                      ldr r2, [r5, r3]
0031a544  04 30 a0 e1                                      mov r3, r4
0031a548  6e 02 00 eb                                      bl #0x31af08
0031a54c  04 00 a0 e1                                      mov r0, r4
0031a550  34 fb ff eb                                      bl #0x319228
0031a554  14 d0 8d e2                                      add sp, sp, #0x14
0031a558  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0031a55c  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
0031a560  03 30 95 e7                                      ldr r3, [r5, r3]
0031a564  00 30 93 e5                                      ldr r3, [r3]
0031a568  02 00 53 e3                                      cmp r3, #2
0031a56c  00 10 81 05                                      streq r1, [r1]
0031a570  e4 ff ff 0a                                      beq #0x31a508
0031a574  01 00 53 e3                                      cmp r3, #1
0031a578  e2 ff ff 1a                                      bne #0x31a508
0031a57c  8c 00 9f e5                                      ldr r0, [pc, #0x8c]
0031a580  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
0031a584  8c 20 9f e5                                      ldr r2, [pc, #0x8c]
0031a588  00 00 95 e7                                      ldr r0, [r5, r0]
0031a58c  88 30 9f e5                                      ldr r3, [pc, #0x88]
0031a590  79 c0 a0 e3                                      mov ip, #0x79
0031a594  01 10 8f e0                                      add r1, pc, r1
0031a598  02 20 8f e0                                      add r2, pc, r2
0031a59c  03 30 8f e0                                      add r3, pc, r3
0031a5a0  a8 00 80 e2                                      add r0, r0, #0xa8
0031a5a4  00 c0 8d e5                                      str ip, [sp]
0031a5a8  95 ce ff eb                                      bl #0x30e004
0031a5ac  d5 ff ff ea                                      b #0x31a508
0031a5b0  54 30 9f e5                                      ldr r3, [pc, #0x54]
0031a5b4  03 30 95 e7                                      ldr r3, [r5, r3]
0031a5b8  00 30 93 e5                                      ldr r3, [r3]
0031a5bc  02 00 53 e3                                      cmp r3, #2
0031a5c0  00 70 87 05                                      streq r7, [r7]
0031a5c4  d1 ff ff 0a                                      beq #0x31a510
0031a5c8  01 00 53 e3                                      cmp r3, #1
0031a5cc  cf ff ff 1a                                      bne #0x31a510
0031a5d0  38 00 9f e5                                      ldr r0, [pc, #0x38]
0031a5d4  44 10 9f e5                                      ldr r1, [pc, #0x44]
0031a5d8  44 20 9f e5                                      ldr r2, [pc, #0x44]
0031a5dc  00 00 95 e7                                      ldr r0, [r5, r0]
0031a5e0  40 30 9f e5                                      ldr r3, [pc, #0x40]
0031a5e4  7a c0 a0 e3                                      mov ip, #0x7a
0031a5e8  01 10 8f e0                                      add r1, pc, r1
0031a5ec  02 20 8f e0                                      add r2, pc, r2
0031a5f0  03 30 8f e0                                      add r3, pc, r3
0031a5f4  a8 00 80 e2                                      add r0, r0, #0xa8
0031a5f8  00 c0 8d e5                                      str ip, [sp]
0031a5fc  80 ce ff eb                                      bl #0x30e004
0031a600  c2 ff ff ea                                      b #0x31a510
; mapping-symbol data/literal pool
0031a604  a4 a5 67 00 50 24 00 00 c0 39 00 00 c0 19 00 00  .byte 0xa4, 0xa5, 0x67, 0x00, 0x50, 0x24, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
0031a614  44 3e 5a 00 30 42 5a 00 3c 42 5a 00 f0 3d 5a 00  .byte 0x44, 0x3e, 0x5a, 0x00, 0x30, 0x42, 0x5a, 0x00, 0x3c, 0x42, 0x5a, 0x00, 0xf0, 0x3d, 0x5a, 0x00
0031a624  34 42 5a 00 e8 41 5a 00                          .byte 0x34, 0x42, 0x5a, 0x00, 0xe8, 0x41, 0x5a, 0x00

; FUNCTION 0x0031b57c, declared_size=4, range_size=4, mode=arm
; class-group: sfc::script::lua::Binder
; alias: _ZN3sfc6script3lua6BinderD1Ev
; demangled: sfc::script::lua::Binder::~Binder()
; decoder-mode: arm
0031b57c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031bb54, declared_size=52, range_size=52, mode=arm
; class-group: sfc::script::lua::Binder
; alias: _ZN3sfc6script3lua6BinderD0Ev
; demangled: sfc::script::lua::Binder::~Binder()
; decoder-mode: arm
0031bb54  24 30 9f e5                                      ldr r3, [pc, #0x24]
0031bb58  24 20 9f e5                                      ldr r2, [pc, #0x24]
0031bb5c  10 40 2d e9                                      push {r4, lr}
0031bb60  03 30 8f e0                                      add r3, pc, r3
0031bb64  02 20 93 e7                                      ldr r2, [r3, r2]
0031bb68  00 40 a0 e1                                      mov r4, r0
0031bb6c  08 20 82 e2                                      add r2, r2, #8
0031bb70  00 20 80 e5                                      str r2, [r0]
0031bb74  31 d2 ff eb                                      bl #0x310440
0031bb78  04 00 a0 e1                                      mov r0, r4
0031bb7c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0031bb80  30 8f 67 00 58 36 00 00                          .byte 0x30, 0x8f, 0x67, 0x00, 0x58, 0x36, 0x00, 0x00
