; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00435908, declared_size=4, range_size=4, mode=arm
; class-group: MenuWorldMap
; alias: _ZN12MenuWorldMap9RenderMapERN7gameswf12render_stateEPv
; demangled: MenuWorldMap::RenderMap(gameswf::render_state&, void*)
; decoder-mode: arm
00435908  1e ff 2f e1                                      bx lr

; FUNCTION 0x0043590c, declared_size=336, range_size=336, mode=arm
; class-group: MenuWorldMap
; alias: _ZN12MenuWorldMap7DragMapEii
; demangled: MenuWorldMap::DragMap(int, int)
; decoder-mode: arm
0043590c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00435910  f0 c0 90 e5                                      ldr ip, [r0, #0xf0]
00435914  f4 30 90 e5                                      ldr r3, [r0, #0xf4]
00435918  2c d0 4d e2                                      sub sp, sp, #0x2c
0043591c  01 10 8c e0                                      add r1, ip, r1
00435920  02 30 83 e0                                      add r3, r3, r2
00435924  00 40 a0 e1                                      mov r4, r0
00435928  f4 30 84 e5                                      str r3, [r4, #0xf4]
0043592c  18 00 8d e2                                      add r0, sp, #0x18
00435930  f0 10 84 e5                                      str r1, [r4, #0xf0]
00435934  e8 10 94 e5                                      ldr r1, [r4, #0xe8]
00435938  4f 84 ff eb                                      bl #0x416a7c
0043593c  18 60 9d e5                                      ldr r6, [sp, #0x18]
00435940  ec 10 94 e5                                      ldr r1, [r4, #0xec]
00435944  08 00 8d e2                                      add r0, sp, #8
00435948  24 80 9d e5                                      ldr r8, [sp, #0x24]
0043594c  4a 84 ff eb                                      bl #0x416a7c
00435950  06 00 a0 e1                                      mov r0, r6
00435954  dc 62 fb eb                                      bl #0x30e4cc
00435958  06 10 a0 e1                                      mov r1, r6
0043595c  00 50 a0 e1                                      mov r5, r0
00435960  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00435964  90 62 fb eb                                      bl #0x30e3ac
00435968  08 10 9d e5                                      ldr r1, [sp, #8]
0043596c  00 60 a0 e1                                      mov r6, r0
00435970  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00435974  8c 62 fb eb                                      bl #0x30e3ac
00435978  00 10 a0 e1                                      mov r1, r0
0043597c  06 00 a0 e1                                      mov r0, r6
00435980  89 62 fb eb                                      bl #0x30e3ac
00435984  02 01 c0 e3                                      bic r0, r0, #0x80000000
00435988  cf 62 fb eb                                      bl #0x30e4cc
0043598c  05 30 60 e0                                      rsb r3, r0, r5
00435990  08 00 a0 e1                                      mov r0, r8
00435994  04 30 8d e5                                      str r3, [sp, #4]
00435998  cb 62 fb eb                                      bl #0x30e4cc
0043599c  28 21 94 e5                                      ldr r2, [r4, #0x128]
004359a0  f0 60 94 e5                                      ldr r6, [r4, #0xf0]
004359a4  04 30 9d e5                                      ldr r3, [sp, #4]
004359a8  0c 10 a0 e3                                      mov r1, #0xc
004359ac  91 42 22 e0                                      mla r2, r1, r2, r4
004359b0  06 00 53 e1                                      cmp r3, r6
004359b4  f8 a0 92 e5                                      ldr sl, [r2, #0xf8]
004359b8  20 10 9d e5                                      ldr r1, [sp, #0x20]
004359bc  14 b0 9d e5                                      ldr fp, [sp, #0x14]
004359c0  10 90 9d e5                                      ldr sb, [sp, #0x10]
004359c4  00 70 a0 e1                                      mov r7, r0
004359c8  f0 30 84 c5                                      strgt r3, [r4, #0xf0]
004359cc  03 60 a0 c1                                      movgt r6, r3
004359d0  02 00 00 ca                                      bgt #0x4359e0
004359d4  06 00 55 e1                                      cmp r5, r6
004359d8  f0 50 84 b5                                      strlt r5, [r4, #0xf0]
004359dc  05 60 a0 b1                                      movlt r6, r5
004359e0  f4 50 94 e5                                      ldr r5, [r4, #0xf4]
004359e4  05 00 57 e1                                      cmp r7, r5
004359e8  f4 70 84 c5                                      strgt r7, [r4, #0xf4]
004359ec  07 50 a0 c1                                      movgt r5, r7
004359f0  12 00 00 ca                                      bgt #0x435a40
004359f4  08 00 a0 e1                                      mov r0, r8
004359f8  6b 62 fb eb                                      bl #0x30e3ac
004359fc  09 10 a0 e1                                      mov r1, sb
00435a00  00 80 a0 e1                                      mov r8, r0
00435a04  0b 00 a0 e1                                      mov r0, fp
00435a08  67 62 fb eb                                      bl #0x30e3ac
00435a0c  00 10 a0 e1                                      mov r1, r0
00435a10  08 00 a0 e1                                      mov r0, r8
00435a14  64 62 fb eb                                      bl #0x30e3ac
00435a18  02 01 c0 e3                                      bic r0, r0, #0x80000000
00435a1c  aa 62 fb eb                                      bl #0x30e4cc
00435a20  07 00 80 e0                                      add r0, r0, r7
00435a24  ce 63 fb eb                                      bl #0x30e964
00435a28  0a 10 a0 e1                                      mov r1, sl
00435a2c  ce 64 fb eb                                      bl #0x30ed6c
00435a30  a5 62 fb eb                                      bl #0x30e4cc
00435a34  05 00 50 e1                                      cmp r0, r5
00435a38  f4 00 84 b5                                      strlt r0, [r4, #0xf4]
00435a3c  00 50 a0 b1                                      movlt r5, r0
00435a40  ec 10 94 e5                                      ldr r1, [r4, #0xec]
00435a44  04 00 94 e5                                      ldr r0, [r4, #4]
00435a48  06 20 a0 e1                                      mov r2, r6
00435a4c  05 30 a0 e1                                      mov r3, r5
00435a50  2c d0 8d e2                                      add sp, sp, #0x2c
00435a54  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00435a58  64 d2 0d ea                                      b #0x7aa3f0

; FUNCTION 0x00435ae8, declared_size=652, range_size=652, mode=arm
; class-group: MenuWorldMap
; alias: _ZN12MenuWorldMap7ZoomMapEf
; demangled: MenuWorldMap::ZoomMap(float)
; decoder-mode: arm
00435ae8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00435aec  00 40 a0 e1                                      mov r4, r0
00435af0  48 d0 4d e2                                      sub sp, sp, #0x48
00435af4  01 00 a0 e1                                      mov r0, r1
00435af8  3c 11 94 e5                                      ldr r1, [r4, #0x13c]
00435afc  9a 64 fb eb                                      bl #0x30ed6c
00435b00  30 61 94 e5                                      ldr r6, [r4, #0x130]
00435b04  00 10 a0 e1                                      mov r1, r0
00435b08  06 00 a0 e1                                      mov r0, r6
00435b0c  24 64 fb eb                                      bl #0x30eba4
00435b10  34 51 94 e5                                      ldr r5, [r4, #0x134]
00435b14  00 80 a0 e1                                      mov r8, r0
00435b18  06 00 a0 e1                                      mov r0, r6
00435b1c  05 10 a0 e1                                      mov r1, r5
00435b20  19 61 fb eb                                      bl #0x30df8c
00435b24  00 00 50 e3                                      cmp r0, #0
00435b28  04 00 00 0a                                      beq #0x435b40
00435b2c  08 00 a0 e1                                      mov r0, r8
00435b30  05 10 a0 e1                                      mov r1, r5
00435b34  9c 63 fb eb                                      bl #0x30e9ac
00435b38  00 00 50 e3                                      cmp r0, #0
00435b3c  84 00 00 1a                                      bne #0x435d54
00435b40  38 71 94 e5                                      ldr r7, [r4, #0x138]
00435b44  06 00 a0 e1                                      mov r0, r6
00435b48  07 10 a0 e1                                      mov r1, r7
00435b4c  0e 61 fb eb                                      bl #0x30df8c
00435b50  00 00 50 e3                                      cmp r0, #0
00435b54  80 00 00 1a                                      bne #0x435d5c
00435b58  05 10 a0 e1                                      mov r1, r5
00435b5c  08 00 a0 e1                                      mov r0, r8
00435b60  e9 62 fb eb                                      bl #0x30e70c
00435b64  00 00 50 e3                                      cmp r0, #0
00435b68  08 50 a0 01                                      moveq r5, r8
00435b6c  05 10 a0 e1                                      mov r1, r5
00435b70  07 00 a0 e1                                      mov r0, r7
00435b74  e4 62 fb eb                                      bl #0x30e70c
00435b78  00 00 50 e3                                      cmp r0, #0
00435b7c  07 50 a0 11                                      movne r5, r7
00435b80  30 51 84 e5                                      str r5, [r4, #0x130]
00435b84  38 00 8d e2                                      add r0, sp, #0x38
00435b88  ec 10 94 e5                                      ldr r1, [r4, #0xec]
00435b8c  ba 83 ff eb                                      bl #0x416a7c
00435b90  28 31 94 e5                                      ldr r3, [r4, #0x128]
00435b94  0c 80 a0 e3                                      mov r8, #0xc
00435b98  44 10 9d e5                                      ldr r1, [sp, #0x44]
00435b9c  98 43 23 e0                                      mla r3, r8, r3, r4
00435ba0  f8 00 93 e5                                      ldr r0, [r3, #0xf8]
00435ba4  70 64 fb eb                                      bl #0x30ed6c
00435ba8  ec 30 94 e5                                      ldr r3, [r4, #0xec]
00435bac  0d c0 a0 e1                                      mov ip, sp
00435bb0  30 a1 94 e5                                      ldr sl, [r4, #0x130]
00435bb4  4c e0 93 e5                                      ldr lr, [r3, #0x4c]
00435bb8  00 50 a0 e1                                      mov r5, r0
00435bbc  38 60 9d e5                                      ldr r6, [sp, #0x38]
00435bc0  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00435bc4  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00435bc8  03 00 9e e8                                      ldm lr, {r0, r1}
00435bcc  00 00 8c e5                                      str r0, [ip]
00435bd0  0d 00 a0 e1                                      mov r0, sp
00435bd4  04 10 8c e5                                      str r1, [ip, #4]
00435bd8  36 83 0d eb                                      bl #0x7968b8
00435bdc  0a 20 a0 e1                                      mov r2, sl
00435be0  00 30 a0 e1                                      mov r3, r0
00435be4  0a 10 a0 e1                                      mov r1, sl
00435be8  0d 00 a0 e1                                      mov r0, sp
00435bec  4b 83 0d eb                                      bl #0x796920
00435bf0  0d 10 a0 e1                                      mov r1, sp
00435bf4  ec 00 94 e5                                      ldr r0, [r4, #0xec]
00435bf8  7e 71 ff eb                                      bl #0x4121f8
00435bfc  28 00 8d e2                                      add r0, sp, #0x28
00435c00  ec 10 94 e5                                      ldr r1, [r4, #0xec]
00435c04  9c 83 ff eb                                      bl #0x416a7c
00435c08  28 31 94 e5                                      ldr r3, [r4, #0x128]
00435c0c  34 10 9d e5                                      ldr r1, [sp, #0x34]
00435c10  98 43 28 e0                                      mla r8, r8, r3, r4
00435c14  f8 00 98 e5                                      ldr r0, [r8, #0xf8]
00435c18  53 64 fb eb                                      bl #0x30ed6c
00435c1c  e8 10 94 e5                                      ldr r1, [r4, #0xe8]
00435c20  00 a0 a0 e1                                      mov sl, r0
00435c24  18 00 8d e2                                      add r0, sp, #0x18
00435c28  93 83 ff eb                                      bl #0x416a7c
00435c2c  18 80 9d e5                                      ldr r8, [sp, #0x18]
00435c30  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00435c34  20 70 9d e5                                      ldr r7, [sp, #0x20]
00435c38  08 10 a0 e1                                      mov r1, r8
00435c3c  da 61 fb eb                                      bl #0x30e3ac
00435c40  3f 14 a0 e3                                      mov r1, #0x3f000000
00435c44  48 64 fb eb                                      bl #0x30ed6c
00435c48  08 10 a0 e1                                      mov r1, r8
00435c4c  d4 63 fb eb                                      bl #0x30eba4
00435c50  07 10 a0 e1                                      mov r1, r7
00435c54  00 80 a0 e1                                      mov r8, r0
00435c58  24 00 9d e5                                      ldr r0, [sp, #0x24]
00435c5c  d2 61 fb eb                                      bl #0x30e3ac
00435c60  3f 14 a0 e3                                      mov r1, #0x3f000000
00435c64  40 64 fb eb                                      bl #0x30ed6c
00435c68  00 10 a0 e1                                      mov r1, r0
00435c6c  07 00 a0 e1                                      mov r0, r7
00435c70  cb 63 fb eb                                      bl #0x30eba4
00435c74  06 10 a0 e1                                      mov r1, r6
00435c78  00 70 a0 e1                                      mov r7, r0
00435c7c  08 00 a0 e1                                      mov r0, r8
00435c80  c9 61 fb eb                                      bl #0x30e3ac
00435c84  06 10 a0 e1                                      mov r1, r6
00435c88  00 90 a0 e1                                      mov sb, r0
00435c8c  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
00435c90  c5 61 fb eb                                      bl #0x30e3ac
00435c94  00 10 a0 e1                                      mov r1, r0
00435c98  09 00 a0 e1                                      mov r0, sb
00435c9c  fc 63 fb eb                                      bl #0x30ec94
00435ca0  28 10 9d e5                                      ldr r1, [sp, #0x28]
00435ca4  00 90 a0 e1                                      mov sb, r0
00435ca8  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00435cac  be 61 fb eb                                      bl #0x30e3ac
00435cb0  00 10 a0 e1                                      mov r1, r0
00435cb4  09 00 a0 e1                                      mov r0, sb
00435cb8  2b 64 fb eb                                      bl #0x30ed6c
00435cbc  00 10 a0 e1                                      mov r1, r0
00435cc0  08 00 a0 e1                                      mov r0, r8
00435cc4  b8 61 fb eb                                      bl #0x30e3ac
00435cc8  05 10 a0 e1                                      mov r1, r5
00435ccc  00 80 a0 e1                                      mov r8, r0
00435cd0  07 00 a0 e1                                      mov r0, r7
00435cd4  b4 61 fb eb                                      bl #0x30e3ac
00435cd8  40 10 9d e5                                      ldr r1, [sp, #0x40]
00435cdc  00 90 a0 e1                                      mov sb, r0
00435ce0  05 00 a0 e1                                      mov r0, r5
00435ce4  b0 61 fb eb                                      bl #0x30e3ac
00435ce8  00 10 a0 e1                                      mov r1, r0
00435cec  09 00 a0 e1                                      mov r0, sb
00435cf0  e7 63 fb eb                                      bl #0x30ec94
00435cf4  30 10 9d e5                                      ldr r1, [sp, #0x30]
00435cf8  00 90 a0 e1                                      mov sb, r0
00435cfc  0a 00 a0 e1                                      mov r0, sl
00435d00  a9 61 fb eb                                      bl #0x30e3ac
00435d04  00 10 a0 e1                                      mov r1, r0
00435d08  09 00 a0 e1                                      mov r0, sb
00435d0c  16 64 fb eb                                      bl #0x30ed6c
00435d10  00 10 a0 e1                                      mov r1, r0
00435d14  07 00 a0 e1                                      mov r0, r7
00435d18  a3 61 fb eb                                      bl #0x30e3ac
00435d1c  06 10 a0 e1                                      mov r1, r6
00435d20  00 70 a0 e1                                      mov r7, r0
00435d24  08 00 a0 e1                                      mov r0, r8
00435d28  9f 61 fb eb                                      bl #0x30e3ac
00435d2c  e6 61 fb eb                                      bl #0x30e4cc
00435d30  05 10 a0 e1                                      mov r1, r5
00435d34  00 60 a0 e1                                      mov r6, r0
00435d38  07 00 a0 e1                                      mov r0, r7
00435d3c  9a 61 fb eb                                      bl #0x30e3ac
00435d40  e1 61 fb eb                                      bl #0x30e4cc
00435d44  06 10 a0 e1                                      mov r1, r6
00435d48  00 20 a0 e1                                      mov r2, r0
00435d4c  04 00 a0 e1                                      mov r0, r4
00435d50  ed fe ff eb                                      bl #0x43590c
00435d54  48 d0 8d e2                                      add sp, sp, #0x48
00435d58  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00435d5c  08 00 a0 e1                                      mov r0, r8
00435d60  07 10 a0 e1                                      mov r1, r7
00435d64  d2 61 fb eb                                      bl #0x30e4b4
00435d68  00 00 50 e3                                      cmp r0, #0
00435d6c  79 ff ff 0a                                      beq #0x435b58
00435d70  f7 ff ff ea                                      b #0x435d54

; FUNCTION 0x00435e50, declared_size=212, range_size=212, mode=arm
; class-group: MenuWorldMap
; alias: _ZN12MenuWorldMap4HideEv
; demangled: MenuWorldMap::Hide()
; decoder-mode: arm
00435e50  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00435e54  c0 40 9f e5                                      ldr r4, [pc, #0xc0]
00435e58  c0 70 9f e5                                      ldr r7, [pc, #0xc0]
00435e5c  c8 80 80 e2                                      add r8, r0, #0xc8
00435e60  04 40 8f e0                                      add r4, pc, r4
00435e64  07 50 94 e7                                      ldr r5, [r4, r7]
00435e68  08 20 a0 e1                                      mov r2, r8
00435e6c  04 10 a0 e3                                      mov r1, #4
00435e70  00 60 a0 e1                                      mov r6, r0
00435e74  14 00 95 e5                                      ldr r0, [r5, #0x14]
00435e78  a7 08 fc eb                                      bl #0x33811c
00435e7c  08 20 a0 e1                                      mov r2, r8
00435e80  05 10 a0 e3                                      mov r1, #5
00435e84  14 00 95 e5                                      ldr r0, [r5, #0x14]
00435e88  a3 08 fc eb                                      bl #0x33811c
00435e8c  05 00 a0 e1                                      mov r0, r5
00435e90  bf a5 fb eb                                      bl #0x31f594
00435e94  00 80 50 e2                                      subs r8, r0, #0
00435e98  19 00 00 0a                                      beq #0x435f04
00435e9c  40 00 95 e5                                      ldr r0, [r5, #0x40]
00435ea0  00 10 a0 e3                                      mov r1, #0
00435ea4  01 20 a0 e3                                      mov r2, #1
00435ea8  28 51 98 e5                                      ldr r5, [r8, #0x128]
00435eac  71 e1 fc eb                                      bl #0x36e478
00435eb0  60 16 90 e5                                      ldr r1, [r0, #0x660]
00435eb4  00 00 55 e3                                      cmp r5, #0
00435eb8  00 00 51 13                                      cmpne r1, #0
00435ebc  06 00 00 1a                                      bne #0x435edc
00435ec0  07 30 94 e7                                      ldr r3, [r4, r7]
00435ec4  05 10 a0 e1                                      mov r1, r5
00435ec8  50 00 93 e5                                      ldr r0, [r3, #0x50]
00435ecc  37 30 fd eb                                      bl #0x381fb0
00435ed0  06 00 a0 e1                                      mov r0, r6
00435ed4  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00435ed8  05 bb ff ea                                      b #0x424af4
00435edc  00 20 a0 e3                                      mov r2, #0
00435ee0  05 00 a0 e1                                      mov r0, r5
00435ee4  b6 6e ff eb                                      bl #0x4119c4
00435ee8  05 00 a0 e1                                      mov r0, r5
00435eec  5a 65 ff eb                                      bl #0x40f45c
00435ef0  00 30 95 e5                                      ldr r3, [r5]
00435ef4  05 00 a0 e1                                      mov r0, r5
00435ef8  0f e0 a0 e1                                      mov lr, pc
00435efc  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00435f00  ee ff ff ea                                      b #0x435ec0
00435f04  40 00 95 e5                                      ldr r0, [r5, #0x40]
00435f08  08 10 a0 e1                                      mov r1, r8
00435f0c  01 20 a0 e3                                      mov r2, #1
00435f10  58 e1 fc eb                                      bl #0x36e478
00435f14  08 50 a0 e1                                      mov r5, r8
00435f18  e8 ff ff ea                                      b #0x435ec0
; mapping-symbol data/literal pool
00435f1c  30 ec 55 00 f4 37 00 00                          .byte 0x30, 0xec, 0x55, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x004360ec, declared_size=816, range_size=816, mode=arm
; class-group: MenuWorldMap
; alias: _ZN12MenuWorldMap4InitEv
; demangled: MenuWorldMap::Init()
; decoder-mode: arm
004360ec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004360f0  08 93 9f e5                                      ldr sb, [pc, #0x308]
004360f4  08 13 9f e5                                      ldr r1, [pc, #0x308]
004360f8  64 d0 4d e2                                      sub sp, sp, #0x64
004360fc  09 90 8f e0                                      add sb, pc, sb
00436100  01 30 99 e7                                      ldr r3, [sb, r1]
00436104  00 40 a0 e1                                      mov r4, r0
00436108  14 10 8d e5                                      str r1, [sp, #0x14]
0043610c  00 30 93 e5                                      ldr r3, [r3]
00436110  5c 30 8d e5                                      str r3, [sp, #0x5c]
00436114  5c da ff eb                                      bl #0x42ca8c
00436118  04 10 a0 e1                                      mov r1, r4
0043611c  5c e3 ff eb                                      bl #0x42ee94
00436120  04 50 94 e5                                      ldr r5, [r4, #4]
00436124  00 00 55 e3                                      cmp r5, #0
00436128  81 00 00 0a                                      beq #0x436334
0043612c  04 00 a0 e1                                      mov r0, r4
00436130  c5 af ff eb                                      bl #0x42204c
00436134  cc 12 9f e5                                      ldr r1, [pc, #0x2cc]
00436138  00 20 a0 e1                                      mov r2, r0
0043613c  05 00 a0 e1                                      mov r0, r5
00436140  01 10 8f e0                                      add r1, pc, r1
00436144  4e ca 0d eb                                      bl #0x7a8a84
00436148  e8 00 84 e5                                      str r0, [r4, #0xe8]
0043614c  04 00 a0 e1                                      mov r0, r4
00436150  04 50 94 e5                                      ldr r5, [r4, #4]
00436154  bc af ff eb                                      bl #0x42204c
00436158  ac 12 9f e5                                      ldr r1, [pc, #0x2ac]
0043615c  00 20 a0 e1                                      mov r2, r0
00436160  05 00 a0 e1                                      mov r0, r5
00436164  01 10 8f e0                                      add r1, pc, r1
00436168  45 ca 0d eb                                      bl #0x7a8a84
0043616c  00 10 a0 e1                                      mov r1, r0
00436170  ec 00 84 e5                                      str r0, [r4, #0xec]
00436174  34 00 8d e2                                      add r0, sp, #0x34
00436178  3f 82 ff eb                                      bl #0x416a7c
0043617c  40 30 9d e5                                      ldr r3, [sp, #0x40]
00436180  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
00436184  84 a2 9f e5                                      ldr sl, [pc, #0x284]
00436188  18 30 8d e5                                      str r3, [sp, #0x18]
0043618c  80 32 9f e5                                      ldr r3, [pc, #0x280]
00436190  44 80 8d e2                                      add r8, sp, #0x44
00436194  10 00 88 e2                                      add r0, r8, #0x10
00436198  03 30 8f e0                                      add r3, pc, r3
0043619c  02 10 83 e2                                      add r1, r3, #2
004361a0  04 20 8d e5                                      str r2, [sp, #4]
004361a4  0c 30 8d e5                                      str r3, [sp, #0xc]
004361a8  0a a0 8f e0                                      add sl, pc, sl
004361ac  04 50 a0 e1                                      mov r5, r4
004361b0  01 60 a0 e3                                      mov r6, #1
004361b4  08 70 a0 e1                                      mov r7, r8
004361b8  08 00 8d e5                                      str r0, [sp, #8]
004361bc  10 10 8d e5                                      str r1, [sp, #0x10]
004361c0  08 00 9d e5                                      ldr r0, [sp, #8]
004361c4  00 b0 a0 e3                                      mov fp, #0
004361c8  08 20 a0 e1                                      mov r2, r8
004361cc  00 10 68 e0                                      rsb r1, r8, r0
004361d0  08 00 51 e3                                      cmp r1, #8
004361d4  54 80 8d e5                                      str r8, [sp, #0x54]
004361d8  58 80 8d e5                                      str r8, [sp, #0x58]
004361dc  44 b0 cd e5                                      strb fp, [sp, #0x44]
004361e0  07 80 a0 e1                                      mov r8, r7
004361e4  5a 00 00 9a                                      bls #0x436354
004361e8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
004361ec  10 30 9d e5                                      ldr r3, [sp, #0x10]
004361f0  09 00 81 e2                                      add r0, r1, #9
004361f4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004361f8  01 30 83 e2                                      add r3, r3, #1
004361fc  00 00 53 e1                                      cmp r3, r0
00436200  01 10 e2 e5                                      strb r1, [r2, #1]!
00436204  fa ff ff 1a                                      bne #0x4361f4
00436208  54 30 9d e5                                      ldr r3, [sp, #0x54]
0043620c  00 20 a0 e3                                      mov r2, #0
00436210  08 20 c3 e5                                      strb r2, [r3, #8]
00436214  54 30 9d e5                                      ldr r3, [sp, #0x54]
00436218  4d 20 a0 e3                                      mov r2, #0x4d
0043621c  00 20 c3 e5                                      strb r2, [r3]
00436220  54 30 9d e5                                      ldr r3, [sp, #0x54]
00436224  08 30 83 e2                                      add r3, r3, #8
00436228  54 30 8d e5                                      str r3, [sp, #0x54]
0043622c  76 10 af e6                                      sxtb r1, r6
00436230  07 00 a0 e1                                      mov r0, r7
00436234  5b ff ff eb                                      bl #0x435fa8
00436238  04 30 94 e5                                      ldr r3, [r4, #4]
0043623c  04 00 a0 e1                                      mov r0, r4
00436240  58 b0 9d e5                                      ldr fp, [sp, #0x58]
00436244  00 30 8d e5                                      str r3, [sp]
00436248  7f af ff eb                                      bl #0x42204c
0043624c  00 30 9d e5                                      ldr r3, [sp]
00436250  00 20 a0 e1                                      mov r2, r0
00436254  0b 10 a0 e1                                      mov r1, fp
00436258  03 00 a0 e1                                      mov r0, r3
0043625c  08 ca 0d eb                                      bl #0x7a8a84
00436260  00 10 50 e2                                      subs r1, r0, #0
00436264  fe 25 a0 03                                      moveq r2, #0x3f800000
00436268  f8 20 85 05                                      streq r2, [r5, #0xf8]
0043626c  0f 00 00 0a                                      beq #0x4362b0
00436270  24 00 8d e2                                      add r0, sp, #0x24
00436274  00 82 ff eb                                      bl #0x416a7c
00436278  04 10 9d e5                                      ldr r1, [sp, #4]
0043627c  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00436280  49 60 fb eb                                      bl #0x30e3ac
00436284  04 10 9d e5                                      ldr r1, [sp, #4]
00436288  00 b0 a0 e1                                      mov fp, r0
0043628c  18 00 9d e5                                      ldr r0, [sp, #0x18]
00436290  45 60 fb eb                                      bl #0x30e3ac
00436294  00 10 a0 e1                                      mov r1, r0
00436298  0b 00 a0 e1                                      mov r0, fp
0043629c  7c 62 fb eb                                      bl #0x30ec94
004362a0  02 11 c0 e3                                      bic r1, r0, #0x80000000
004362a4  fe 05 a0 e3                                      mov r0, #0x3f800000
004362a8  3f 60 fb eb                                      bl #0x30e3ac
004362ac  f8 00 85 e5                                      str r0, [r5, #0xf8]
004362b0  00 30 e0 e3                                      mvn r3, #0
004362b4  00 31 85 e5                                      str r3, [r5, #0x100]
004362b8  fc 30 85 e5                                      str r3, [r5, #0xfc]
004362bc  58 00 9d e5                                      ldr r0, [sp, #0x58]
004362c0  07 00 50 e1                                      cmp r0, r7
004362c4  02 00 00 0a                                      beq #0x4362d4
004362c8  00 00 50 e3                                      cmp r0, #0
004362cc  00 00 00 0a                                      beq #0x4362d4
004362d0  5e 68 fb eb                                      bl #0x310450
004362d4  01 60 86 e2                                      add r6, r6, #1
004362d8  05 00 56 e3                                      cmp r6, #5
004362dc  0c 50 85 e2                                      add r5, r5, #0xc
004362e0  b6 ff ff 1a                                      bne #0x4361c0
004362e4  2c 31 9f e5                                      ldr r3, [pc, #0x12c]
004362e8  03 30 99 e7                                      ldr r3, [sb, r3]
004362ec  00 20 93 e5                                      ldr r2, [r3]
004362f0  08 20 92 e5                                      ldr r2, [r2, #8]
004362f4  08 21 84 e5                                      str r2, [r4, #0x108]
004362f8  00 20 93 e5                                      ldr r2, [r3]
004362fc  04 20 92 e5                                      ldr r2, [r2, #4]
00436300  0c 21 84 e5                                      str r2, [r4, #0x10c]
00436304  00 20 93 e5                                      ldr r2, [r3]
00436308  14 20 92 e5                                      ldr r2, [r2, #0x14]
0043630c  14 21 84 e5                                      str r2, [r4, #0x114]
00436310  00 20 93 e5                                      ldr r2, [r3]
00436314  10 20 92 e5                                      ldr r2, [r2, #0x10]
00436318  18 21 84 e5                                      str r2, [r4, #0x118]
0043631c  00 20 93 e5                                      ldr r2, [r3]
00436320  20 20 92 e5                                      ldr r2, [r2, #0x20]
00436324  20 21 84 e5                                      str r2, [r4, #0x120]
00436328  00 30 93 e5                                      ldr r3, [r3]
0043632c  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00436330  24 31 84 e5                                      str r3, [r4, #0x124]
00436334  14 00 9d e5                                      ldr r0, [sp, #0x14]
00436338  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
0043633c  00 30 99 e7                                      ldr r3, [sb, r0]
00436340  00 30 93 e5                                      ldr r3, [r3]
00436344  03 00 52 e1                                      cmp r2, r3
00436348  2b 00 00 1a                                      bne #0x4363fc
0043634c  64 d0 8d e2                                      add sp, sp, #0x64
00436350  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00436354  08 10 a0 e3                                      mov r1, #8
00436358  07 00 a0 e1                                      mov r0, r7
0043635c  fd a7 fb eb                                      bl #0x320358
00436360  0b 10 a0 e1                                      mov r1, fp
00436364  1c 00 8d e5                                      str r0, [sp, #0x1c]
00436368  7e 68 fb eb                                      bl #0x310568
0043636c  58 10 9d e5                                      ldr r1, [sp, #0x58]
00436370  54 20 9d e5                                      ldr r2, [sp, #0x54]
00436374  00 30 a0 e1                                      mov r3, r0
00436378  02 20 61 e0                                      rsb r2, r1, r2
0043637c  0b 00 52 e1                                      cmp r2, fp
00436380  00 b0 a0 d1                                      movle fp, r0
00436384  05 00 00 da                                      ble #0x4363a0
00436388  0b 00 d1 e7                                      ldrb r0, [r1, fp]
0043638c  0b 00 c3 e7                                      strb r0, [r3, fp]
00436390  01 b0 8b e2                                      add fp, fp, #1
00436394  02 00 5b e1                                      cmp fp, r2
00436398  fa ff ff 1a                                      bne #0x436388
0043639c  0b b0 83 e0                                      add fp, r3, fp
004363a0  00 20 a0 e3                                      mov r2, #0
004363a4  02 10 da e7                                      ldrb r1, [sl, r2]
004363a8  02 10 cb e7                                      strb r1, [fp, r2]
004363ac  01 20 82 e2                                      add r2, r2, #1
004363b0  08 00 52 e3                                      cmp r2, #8
004363b4  fa ff ff 1a                                      bne #0x4363a4
004363b8  00 20 a0 e3                                      mov r2, #0
004363bc  08 20 cb e5                                      strb r2, [fp, #8]
004363c0  58 00 9d e5                                      ldr r0, [sp, #0x58]
004363c4  08 b0 8b e2                                      add fp, fp, #8
004363c8  07 00 50 e1                                      cmp r0, r7
004363cc  04 00 00 0a                                      beq #0x4363e4
004363d0  02 00 50 e1                                      cmp r0, r2
004363d4  02 00 00 0a                                      beq #0x4363e4
004363d8  00 30 8d e5                                      str r3, [sp]
004363dc  1b 68 fb eb                                      bl #0x310450
004363e0  00 30 9d e5                                      ldr r3, [sp]
004363e4  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
004363e8  54 b0 8d e5                                      str fp, [sp, #0x54]
004363ec  58 30 8d e5                                      str r3, [sp, #0x58]
004363f0  00 20 83 e0                                      add r2, r3, r0
004363f4  44 20 8d e5                                      str r2, [sp, #0x44]
004363f8  8b ff ff ea                                      b #0x43622c
004363fc  c3 5f fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00436400  94 e9 55 00 ac 40 00 00 00 56 49 00 ec 55 49 00  .byte 0x94, 0xe9, 0x55, 0x00, 0xac, 0x40, 0x00, 0x00, 0x00, 0x56, 0x49, 0x00, 0xec, 0x55, 0x49, 0x00
00436410  b8 55 49 00 c8 55 49 00 8c 44 00 00              .byte 0xb8, 0x55, 0x49, 0x00, 0xc8, 0x55, 0x49, 0x00, 0x8c, 0x44, 0x00, 0x00

; FUNCTION 0x0043641c, declared_size=220, range_size=220, mode=arm
; class-group: MenuWorldMap
; alias: _ZN12MenuWorldMapC1Ev
; demangled: MenuWorldMap::MenuWorldMap()
; decoder-mode: arm
0043641c  c4 10 9f e5                                      ldr r1, [pc, #0xc4]
00436420  70 40 2d e9                                      push {r4, r5, r6, lr}
00436424  01 10 8f e0                                      add r1, pc, r1
00436428  bc 50 9f e5                                      ldr r5, [pc, #0xbc]
0043642c  00 40 a0 e1                                      mov r4, r0
00436430  72 c3 ff eb                                      bl #0x427200
00436434  b4 10 9f e5                                      ldr r1, [pc, #0xb4]
00436438  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
0043643c  05 50 8f e0                                      add r5, pc, r5
00436440  01 10 95 e7                                      ldr r1, [r5, r1]
00436444  02 20 95 e7                                      ldr r2, [r5, r2]
00436448  00 30 a0 e3                                      mov r3, #0
0043644c  08 e0 81 e2                                      add lr, r1, #8
00436450  20 00 82 e2                                      add r0, r2, #0x20
00436454  04 10 a0 e1                                      mov r1, r4
00436458  08 20 82 e2                                      add r2, r2, #8
0043645c  c4 20 84 e5                                      str r2, [r4, #0xc4]
00436460  c8 00 84 e5                                      str r0, [r4, #0xc8]
00436464  00 e0 84 e5                                      str lr, [r4]
00436468  d0 30 84 e5                                      str r3, [r4, #0xd0]
0043646c  cc 30 e1 e5                                      strb r3, [r1, #0xcc]!
00436470  d8 10 84 e5                                      str r1, [r4, #0xd8]
00436474  d4 10 84 e5                                      str r1, [r4, #0xd4]
00436478  00 c0 a0 e3                                      mov ip, #0
0043647c  03 20 a0 e1                                      mov r2, r3
00436480  dc 30 84 e5                                      str r3, [r4, #0xdc]
00436484  e4 40 84 e5                                      str r4, [r4, #0xe4]
00436488  f0 30 84 e5                                      str r3, [r4, #0xf0]
0043648c  f4 30 84 e5                                      str r3, [r4, #0xf4]
00436490  f8 00 84 e2                                      add r0, r4, #0xf8
00436494  03 10 a0 e1                                      mov r1, r3
00436498  00 30 a0 e1                                      mov r3, r0
0043649c  02 c0 a3 e7                                      str ip, [r3, r2]!
004364a0  0c 20 82 e2                                      add r2, r2, #0xc
004364a4  30 00 52 e3                                      cmp r2, #0x30
004364a8  08 10 83 e5                                      str r1, [r3, #8]
004364ac  04 10 83 e5                                      str r1, [r3, #4]
004364b0  f8 ff ff 1a                                      bne #0x436498
004364b4  ff 25 a0 e3                                      mov r2, #0x3fc00000
004364b8  fe 35 a0 e3                                      mov r3, #0x3f800000
004364bc  38 21 84 e5                                      str r2, [r4, #0x138]
004364c0  0f 23 a0 e3                                      mov r2, #0x3c000000
004364c4  04 00 a0 e1                                      mov r0, r4
004364c8  2c 11 c4 e5                                      strb r1, [r4, #0x12c]
004364cc  34 31 84 e5                                      str r3, [r4, #0x134]
004364d0  3c 21 84 e5                                      str r2, [r4, #0x13c]
004364d4  28 11 84 e5                                      str r1, [r4, #0x128]
004364d8  30 31 84 e5                                      str r3, [r4, #0x130]
004364dc  02 ff ff eb                                      bl #0x4360ec
004364e0  04 00 a0 e1                                      mov r0, r4
004364e4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004364e8  4c 53 49 00 54 e6 55 00 80 41 00 00 80 17 00 00  .byte 0x4c, 0x53, 0x49, 0x00, 0x54, 0xe6, 0x55, 0x00, 0x80, 0x41, 0x00, 0x00, 0x80, 0x17, 0x00, 0x00

; FUNCTION 0x004364f8, declared_size=136, range_size=136, mode=arm
; class-group: MenuWorldMap
; alias: _ZN12MenuWorldMap11GetInstanceEv
; demangled: MenuWorldMap::GetInstance()
; decoder-mode: arm
004364f8  70 40 2d e9                                      push {r4, r5, r6, lr}
004364fc  68 50 9f e5                                      ldr r5, [pc, #0x68]
00436500  68 40 9f e5                                      ldr r4, [pc, #0x68]
00436504  05 50 8f e0                                      add r5, pc, r5
00436508  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
0043650c  04 40 8f e0                                      add r4, pc, r4
00436510  01 00 13 e3                                      tst r3, #1
00436514  03 00 00 0a                                      beq #0x436528
00436518  54 00 9f e5                                      ldr r0, [pc, #0x54]
0043651c  00 00 8f e0                                      add r0, pc, r0
00436520  20 00 80 e2                                      add r0, r0, #0x20
00436524  70 80 bd e8                                      pop {r4, r5, r6, pc}
00436528  1c 60 85 e2                                      add r6, r5, #0x1c
0043652c  06 00 a0 e1                                      mov r0, r6
00436530  8d 60 fb eb                                      bl #0x30e76c
00436534  00 00 50 e3                                      cmp r0, #0
00436538  f6 ff ff 0a                                      beq #0x436518
0043653c  20 50 85 e2                                      add r5, r5, #0x20
00436540  05 00 a0 e1                                      mov r0, r5
00436544  b4 ff ff eb                                      bl #0x43641c
00436548  06 00 a0 e1                                      mov r0, r6
0043654c  3a 61 fb eb                                      bl #0x30ea3c
00436550  20 30 9f e5                                      ldr r3, [pc, #0x20]
00436554  05 00 a0 e1                                      mov r0, r5
00436558  03 10 94 e7                                      ldr r1, [r4, r3]
0043655c  18 30 9f e5                                      ldr r3, [pc, #0x18]
00436560  03 20 94 e7                                      ldr r2, [r4, r3]
00436564  66 5f fb eb                                      bl #0x30e304
00436568  ea ff ff ea                                      b #0x436518
; mapping-symbol data/literal pool
0043656c  e0 f4 56 00 84 e5 55 00 c8 f4 56 00 5c 0d 00 00  .byte 0xe0, 0xf4, 0x56, 0x00, 0x84, 0xe5, 0x55, 0x00, 0xc8, 0xf4, 0x56, 0x00, 0x5c, 0x0d, 0x00, 0x00
0043657c  90 18 00 00                                      .byte 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00436580, declared_size=220, range_size=220, mode=arm
; class-group: MenuWorldMap
; alias: _ZN12MenuWorldMapC2Ev
; demangled: MenuWorldMap::MenuWorldMap()
; decoder-mode: arm
00436580  c4 10 9f e5                                      ldr r1, [pc, #0xc4]
00436584  70 40 2d e9                                      push {r4, r5, r6, lr}
00436588  01 10 8f e0                                      add r1, pc, r1
0043658c  bc 50 9f e5                                      ldr r5, [pc, #0xbc]
00436590  00 40 a0 e1                                      mov r4, r0
00436594  19 c3 ff eb                                      bl #0x427200
00436598  b4 10 9f e5                                      ldr r1, [pc, #0xb4]
0043659c  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
004365a0  05 50 8f e0                                      add r5, pc, r5
004365a4  01 10 95 e7                                      ldr r1, [r5, r1]
004365a8  02 20 95 e7                                      ldr r2, [r5, r2]
004365ac  00 30 a0 e3                                      mov r3, #0
004365b0  08 e0 81 e2                                      add lr, r1, #8
004365b4  20 00 82 e2                                      add r0, r2, #0x20
004365b8  04 10 a0 e1                                      mov r1, r4
004365bc  08 20 82 e2                                      add r2, r2, #8
004365c0  c4 20 84 e5                                      str r2, [r4, #0xc4]
004365c4  c8 00 84 e5                                      str r0, [r4, #0xc8]
004365c8  00 e0 84 e5                                      str lr, [r4]
004365cc  d0 30 84 e5                                      str r3, [r4, #0xd0]
004365d0  cc 30 e1 e5                                      strb r3, [r1, #0xcc]!
004365d4  d8 10 84 e5                                      str r1, [r4, #0xd8]
004365d8  d4 10 84 e5                                      str r1, [r4, #0xd4]
004365dc  00 c0 a0 e3                                      mov ip, #0
004365e0  03 20 a0 e1                                      mov r2, r3
004365e4  dc 30 84 e5                                      str r3, [r4, #0xdc]
004365e8  e4 40 84 e5                                      str r4, [r4, #0xe4]
004365ec  f0 30 84 e5                                      str r3, [r4, #0xf0]
004365f0  f4 30 84 e5                                      str r3, [r4, #0xf4]
004365f4  f8 00 84 e2                                      add r0, r4, #0xf8
004365f8  03 10 a0 e1                                      mov r1, r3
004365fc  00 30 a0 e1                                      mov r3, r0
00436600  02 c0 a3 e7                                      str ip, [r3, r2]!
00436604  0c 20 82 e2                                      add r2, r2, #0xc
00436608  30 00 52 e3                                      cmp r2, #0x30
0043660c  08 10 83 e5                                      str r1, [r3, #8]
00436610  04 10 83 e5                                      str r1, [r3, #4]
00436614  f8 ff ff 1a                                      bne #0x4365fc
00436618  ff 25 a0 e3                                      mov r2, #0x3fc00000
0043661c  fe 35 a0 e3                                      mov r3, #0x3f800000
00436620  38 21 84 e5                                      str r2, [r4, #0x138]
00436624  0f 23 a0 e3                                      mov r2, #0x3c000000
00436628  04 00 a0 e1                                      mov r0, r4
0043662c  2c 11 c4 e5                                      strb r1, [r4, #0x12c]
00436630  34 31 84 e5                                      str r3, [r4, #0x134]
00436634  3c 21 84 e5                                      str r2, [r4, #0x13c]
00436638  28 11 84 e5                                      str r1, [r4, #0x128]
0043663c  30 31 84 e5                                      str r3, [r4, #0x130]
00436640  a9 fe ff eb                                      bl #0x4360ec
00436644  04 00 a0 e1                                      mov r0, r4
00436648  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0043664c  e8 51 49 00 f0 e4 55 00 80 41 00 00 80 17 00 00  .byte 0xe8, 0x51, 0x49, 0x00, 0xf0, 0xe4, 0x55, 0x00, 0x80, 0x41, 0x00, 0x00, 0x80, 0x17, 0x00, 0x00

; FUNCTION 0x00436ee0, declared_size=176, range_size=176, mode=arm
; class-group: MenuWorldMap
; alias: _ZN12MenuWorldMapD1Ev
; demangled: MenuWorldMap::~MenuWorldMap()
; decoder-mode: arm
00436ee0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00436ee4  90 50 9f e5                                      ldr r5, [pc, #0x90]
00436ee8  90 30 9f e5                                      ldr r3, [pc, #0x90]
00436eec  90 20 9f e5                                      ldr r2, [pc, #0x90]
00436ef0  05 50 8f e0                                      add r5, pc, r5
00436ef4  03 30 95 e7                                      ldr r3, [r5, r3]
00436ef8  00 60 a0 e1                                      mov r6, r0
00436efc  02 20 95 e7                                      ldr r2, [r5, r2]
00436f00  08 30 83 e2                                      add r3, r3, #8
00436f04  c4 30 86 e4                                      str r3, [r6], #0xc4
00436f08  dc 10 90 e5                                      ldr r1, [r0, #0xdc]
00436f0c  20 30 82 e2                                      add r3, r2, #0x20
00436f10  08 20 82 e2                                      add r2, r2, #8
00436f14  00 00 51 e3                                      cmp r1, #0
00436f18  00 40 a0 e1                                      mov r4, r0
00436f1c  c4 20 80 e5                                      str r2, [r0, #0xc4]
00436f20  c8 30 80 e5                                      str r3, [r0, #0xc8]
00436f24  08 00 00 0a                                      beq #0x436f4c
00436f28  cc 70 80 e2                                      add r7, r0, #0xcc
00436f2c  07 00 a0 e1                                      mov r0, r7
00436f30  d0 10 94 e5                                      ldr r1, [r4, #0xd0]
00436f34  88 ff ff eb                                      bl #0x436d5c
00436f38  00 30 a0 e3                                      mov r3, #0
00436f3c  d8 70 84 e5                                      str r7, [r4, #0xd8]
00436f40  dc 30 84 e5                                      str r3, [r4, #0xdc]
00436f44  d4 70 84 e5                                      str r7, [r4, #0xd4]
00436f48  d0 30 84 e5                                      str r3, [r4, #0xd0]
00436f4c  34 20 9f e5                                      ldr r2, [pc, #0x34]
00436f50  34 30 9f e5                                      ldr r3, [pc, #0x34]
00436f54  04 00 a0 e1                                      mov r0, r4
00436f58  02 20 95 e7                                      ldr r2, [r5, r2]
00436f5c  03 30 95 e7                                      ldr r3, [r5, r3]
00436f60  08 20 82 e2                                      add r2, r2, #8
00436f64  08 30 83 e2                                      add r3, r3, #8
00436f68  04 20 86 e5                                      str r2, [r6, #4]
00436f6c  c4 30 84 e5                                      str r3, [r4, #0xc4]
00436f70  7f ae ff eb                                      bl #0x422974
00436f74  04 00 a0 e1                                      mov r0, r4
00436f78  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00436f7c  a0 db 55 00 80 41 00 00 80 17 00 00 40 0b 00 00  .byte 0xa0, 0xdb, 0x55, 0x00, 0x80, 0x41, 0x00, 0x00, 0x80, 0x17, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00
00436f8c  4c 27 00 00                                      .byte 0x4c, 0x27, 0x00, 0x00

; FUNCTION 0x00436f90, declared_size=28, range_size=28, mode=arm
; class-group: MenuWorldMap
; alias: _ZN12MenuWorldMapD0Ev
; demangled: MenuWorldMap::~MenuWorldMap()
; decoder-mode: arm
00436f90  10 40 2d e9                                      push {r4, lr}
00436f94  00 40 a0 e1                                      mov r4, r0
00436f98  d0 ff ff eb                                      bl #0x436ee0
00436f9c  04 00 a0 e1                                      mov r0, r4
00436fa0  26 65 fb eb                                      bl #0x310440
00436fa4  04 00 a0 e1                                      mov r0, r4
00436fa8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00436fac, declared_size=176, range_size=176, mode=arm
; class-group: MenuWorldMap
; alias: _ZN12MenuWorldMapD2Ev
; demangled: MenuWorldMap::~MenuWorldMap()
; decoder-mode: arm
00436fac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00436fb0  90 50 9f e5                                      ldr r5, [pc, #0x90]
00436fb4  90 30 9f e5                                      ldr r3, [pc, #0x90]
00436fb8  90 20 9f e5                                      ldr r2, [pc, #0x90]
00436fbc  05 50 8f e0                                      add r5, pc, r5
00436fc0  03 30 95 e7                                      ldr r3, [r5, r3]
00436fc4  00 60 a0 e1                                      mov r6, r0
00436fc8  02 20 95 e7                                      ldr r2, [r5, r2]
00436fcc  08 30 83 e2                                      add r3, r3, #8
00436fd0  c4 30 86 e4                                      str r3, [r6], #0xc4
00436fd4  dc 10 90 e5                                      ldr r1, [r0, #0xdc]
00436fd8  20 30 82 e2                                      add r3, r2, #0x20
00436fdc  08 20 82 e2                                      add r2, r2, #8
00436fe0  00 00 51 e3                                      cmp r1, #0
00436fe4  00 40 a0 e1                                      mov r4, r0
00436fe8  c4 20 80 e5                                      str r2, [r0, #0xc4]
00436fec  c8 30 80 e5                                      str r3, [r0, #0xc8]
00436ff0  08 00 00 0a                                      beq #0x437018
00436ff4  cc 70 80 e2                                      add r7, r0, #0xcc
00436ff8  07 00 a0 e1                                      mov r0, r7
00436ffc  d0 10 94 e5                                      ldr r1, [r4, #0xd0]
00437000  55 ff ff eb                                      bl #0x436d5c
00437004  00 30 a0 e3                                      mov r3, #0
00437008  d8 70 84 e5                                      str r7, [r4, #0xd8]
0043700c  dc 30 84 e5                                      str r3, [r4, #0xdc]
00437010  d4 70 84 e5                                      str r7, [r4, #0xd4]
00437014  d0 30 84 e5                                      str r3, [r4, #0xd0]
00437018  34 20 9f e5                                      ldr r2, [pc, #0x34]
0043701c  34 30 9f e5                                      ldr r3, [pc, #0x34]
00437020  04 00 a0 e1                                      mov r0, r4
00437024  02 20 95 e7                                      ldr r2, [r5, r2]
00437028  03 30 95 e7                                      ldr r3, [r5, r3]
0043702c  08 20 82 e2                                      add r2, r2, #8
00437030  08 30 83 e2                                      add r3, r3, #8
00437034  04 20 86 e5                                      str r2, [r6, #4]
00437038  c4 30 84 e5                                      str r3, [r4, #0xc4]
0043703c  4c ae ff eb                                      bl #0x422974
00437040  04 00 a0 e1                                      mov r0, r4
00437044  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00437048  d4 da 55 00 80 41 00 00 80 17 00 00 40 0b 00 00  .byte 0xd4, 0xda, 0x55, 0x00, 0x80, 0x41, 0x00, 0x00, 0x80, 0x17, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00
00437058  4c 27 00 00                                      .byte 0x4c, 0x27, 0x00, 0x00

; FUNCTION 0x0043705c, declared_size=372, range_size=372, mode=arm
; class-group: MenuWorldMap
; alias: _ZN12MenuWorldMap6UnlockEv
; demangled: MenuWorldMap::Unlock()
; decoder-mode: arm
0043705c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00437060  54 81 9f e5                                      ldr r8, [pc, #0x154]
00437064  54 b1 9f e5                                      ldr fp, [pc, #0x154]
00437068  2c 31 d0 e5                                      ldrb r3, [r0, #0x12c]
0043706c  08 80 8f e0                                      add r8, pc, r8
00437070  0b 20 98 e7                                      ldr r2, [r8, fp]
00437074  00 00 53 e3                                      cmp r3, #0
00437078  2c d0 4d e2                                      sub sp, sp, #0x2c
0043707c  00 20 92 e5                                      ldr r2, [r2]
00437080  03 30 a0 13                                      movne r3, #3
00437084  00 60 a0 e1                                      mov r6, r0
00437088  24 20 8d e5                                      str r2, [sp, #0x24]
0043708c  28 31 80 15                                      strne r3, [r0, #0x128]
00437090  06 00 00 0a                                      beq #0x4370b0
00437094  0b 30 98 e7                                      ldr r3, [r8, fp]
00437098  24 20 9d e5                                      ldr r2, [sp, #0x24]
0043709c  00 30 93 e5                                      ldr r3, [r3]
004370a0  03 00 52 e1                                      cmp r2, r3
004370a4  43 00 00 1a                                      bne #0x4371b8
004370a8  2c d0 8d e2                                      add sp, sp, #0x2c
004370ac  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004370b0  0c 01 9f e5                                      ldr r0, [pc, #0x10c]
004370b4  0c c1 9f e5                                      ldr ip, [pc, #0x10c]
004370b8  03 10 a0 e1                                      mov r1, r3
004370bc  00 00 98 e7                                      ldr r0, [r8, r0]
004370c0  03 20 a0 e1                                      mov r2, r3
004370c4  00 c0 8d e5                                      str ip, [sp]
004370c8  40 00 90 e5                                      ldr r0, [r0, #0x40]
004370cc  e9 dc fc eb                                      bl #0x36e478
004370d0  f4 30 9f e5                                      ldr r3, [pc, #0xf4]
004370d4  0c 90 a0 e3                                      mov sb, #0xc
004370d8  60 a6 90 e5                                      ldr sl, [r0, #0x660]
004370dc  03 30 8f e0                                      add r3, pc, r3
004370e0  01 40 a0 e3                                      mov r4, #1
004370e4  04 30 8d e5                                      str r3, [sp, #4]
004370e8  09 70 8d e0                                      add r7, sp, sb
004370ec  03 00 00 ea                                      b #0x437100
004370f0  82 47 0b eb                                      bl #0x708f00
004370f4  01 40 84 e2                                      add r4, r4, #1
004370f8  04 00 54 e3                                      cmp r4, #4
004370fc  e4 ff ff 0a                                      beq #0x437094
00437100  99 64 25 e0                                      mla r5, sb, r4, r6
00437104  0a 00 a0 e1                                      mov r0, sl
00437108  fc 10 95 e5                                      ldr r1, [r5, #0xfc]
0043710c  00 20 e0 e3                                      mvn r2, #0
00437110  78 14 fe eb                                      bl #0x3bc2f8
00437114  00 00 50 e3                                      cmp r0, #0
00437118  f5 ff ff 0a                                      beq #0x4370f4
0043711c  00 21 95 e5                                      ldr r2, [r5, #0x100]
00437120  00 30 90 e5                                      ldr r3, [r0]
00437124  03 00 52 e1                                      cmp r2, r3
00437128  f1 ff ff ca                                      bgt #0x4370f4
0043712c  00 30 9d e5                                      ldr r3, [sp]
00437130  03 50 98 e7                                      ldr r5, [r8, r3]
00437134  28 31 96 e5                                      ldr r3, [r6, #0x128]
00437138  05 00 a0 e1                                      mov r0, r5
0043713c  03 00 54 e1                                      cmp r4, r3
00437140  28 41 86 a5                                      strge r4, [r6, #0x128]
00437144  28 31 86 b5                                      strlt r3, [r6, #0x128]
00437148  ce 01 fc eb                                      bl #0x337888
0043714c  07 00 a0 e1                                      mov r0, r7
00437150  19 10 a0 e3                                      mov r1, #0x19
00437154  1c 70 8d e5                                      str r7, [sp, #0x1c]
00437158  20 70 8d e5                                      str r7, [sp, #0x20]
0043715c  46 69 fb eb                                      bl #0x31167c
00437160  04 10 9d e5                                      ldr r1, [sp, #4]
00437164  18 20 a0 e3                                      mov r2, #0x18
00437168  20 00 9d e5                                      ldr r0, [sp, #0x20]
0043716c  bd 5d fb eb                                      bl #0x30e868
00437170  00 c0 a0 e3                                      mov ip, #0
00437174  18 30 80 e2                                      add r3, r0, #0x18
00437178  1c 30 8d e5                                      str r3, [sp, #0x1c]
0043717c  07 10 a0 e1                                      mov r1, r7
00437180  18 c0 c0 e5                                      strb ip, [r0, #0x18]
00437184  05 00 a0 e1                                      mov r0, r5
00437188  3e 02 fc eb                                      bl #0x337a88
0043718c  20 00 9d e5                                      ldr r0, [sp, #0x20]
00437190  07 00 50 e1                                      cmp r0, r7
00437194  d6 ff ff 0a                                      beq #0x4370f4
00437198  00 00 50 e3                                      cmp r0, #0
0043719c  d4 ff ff 0a                                      beq #0x4370f4
004371a0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
004371a4  01 10 60 e0                                      rsb r1, r0, r1
004371a8  80 00 51 e3                                      cmp r1, #0x80
004371ac  cf ff ff 9a                                      bls #0x4370f0
004371b0  a2 64 fb eb                                      bl #0x310440
004371b4  ce ff ff ea                                      b #0x4370f4
004371b8  54 5c fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004371bc  24 da 55 00 ac 40 00 00 f4 37 00 00 84 08 00 00  .byte 0x24, 0xda, 0x55, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00
004371cc  a4 46 49 00                                      .byte 0xa4, 0x46, 0x49, 0x00

; FUNCTION 0x004371d0, declared_size=228, range_size=228, mode=arm
; class-group: MenuWorldMap
; alias: _ZN12MenuWorldMap4ShowEv
; demangled: MenuWorldMap::Show()
; decoder-mode: arm
004371d0  70 40 2d e9                                      push {r4, r5, r6, lr}
004371d4  c8 50 9f e5                                      ldr r5, [pc, #0xc8]
004371d8  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
004371dc  c8 10 9f e5                                      ldr r1, [pc, #0xc8]
004371e0  05 50 8f e0                                      add r5, pc, r5
004371e4  10 d0 4d e2                                      sub sp, sp, #0x10
004371e8  00 40 a0 e1                                      mov r4, r0
004371ec  03 20 95 e7                                      ldr r2, [r5, r3]
004371f0  01 10 8f e0                                      add r1, pc, r1
004371f4  00 30 a0 e1                                      mov r3, r0
004371f8  04 00 90 e5                                      ldr r0, [r0, #4]
004371fc  f5 c7 0d eb                                      bl #0x7a91d8
00437200  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
00437204  c8 60 84 e2                                      add r6, r4, #0xc8
00437208  06 20 a0 e1                                      mov r2, r6
0043720c  03 50 95 e7                                      ldr r5, [r5, r3]
00437210  04 10 a0 e3                                      mov r1, #4
00437214  00 30 a0 e3                                      mov r3, #0
00437218  14 00 95 e5                                      ldr r0, [r5, #0x14]
0043721c  df 06 fc eb                                      bl #0x338da0
00437220  06 20 a0 e1                                      mov r2, r6
00437224  00 30 a0 e3                                      mov r3, #0
00437228  05 10 a0 e3                                      mov r1, #5
0043722c  14 00 95 e5                                      ldr r0, [r5, #0x14]
00437230  da 06 fc eb                                      bl #0x338da0
00437234  50 00 95 e5                                      ldr r0, [r5, #0x50]
00437238  00 10 a0 e3                                      mov r1, #0
0043723c  5b 2b fd eb                                      bl #0x381fb0
00437240  fe 35 a0 e3                                      mov r3, #0x3f800000
00437244  e8 10 94 e5                                      ldr r1, [r4, #0xe8]
00437248  30 31 84 e5                                      str r3, [r4, #0x130]
0043724c  0d 00 a0 e1                                      mov r0, sp
00437250  09 7e ff eb                                      bl #0x416a7c
00437254  00 00 9d e5                                      ldr r0, [sp]
00437258  9b 5c fb eb                                      bl #0x30e4cc
0043725c  00 50 a0 e1                                      mov r5, r0
00437260  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00437264  98 5c fb eb                                      bl #0x30e4cc
00437268  05 20 a0 e1                                      mov r2, r5
0043726c  00 30 a0 e1                                      mov r3, r0
00437270  f4 00 84 e5                                      str r0, [r4, #0xf4]
00437274  ec 10 94 e5                                      ldr r1, [r4, #0xec]
00437278  04 00 94 e5                                      ldr r0, [r4, #4]
0043727c  f0 50 84 e5                                      str r5, [r4, #0xf0]
00437280  5a cc 0d eb                                      bl #0x7aa3f0
00437284  00 30 a0 e3                                      mov r3, #0
00437288  04 00 a0 e1                                      mov r0, r4
0043728c  28 31 84 e5                                      str r3, [r4, #0x128]
00437290  71 ff ff eb                                      bl #0x43705c
00437294  04 00 a0 e1                                      mov r0, r4
00437298  10 d0 8d e2                                      add sp, sp, #0x10
0043729c  70 40 bd e8                                      pop {r4, r5, r6, lr}
004372a0  6a b8 ff ea                                      b #0x425450
; mapping-symbol data/literal pool
004372a4  b0 d8 55 00 1c 33 00 00 60 45 49 00 f4 37 00 00  .byte 0xb0, 0xd8, 0x55, 0x00, 0x1c, 0x33, 0x00, 0x00, 0x60, 0x45, 0x49, 0x00, 0xf4, 0x37, 0x00, 0x00
