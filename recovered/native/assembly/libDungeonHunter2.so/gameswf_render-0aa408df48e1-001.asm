; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00773838, declared_size=68, range_size=68, mode=arm
; class-group: gameswf::render
; alias: _ZN7gameswf6render20create_video_handlerEv
; demangled: gameswf::render::create_video_handler()
; decoder-mode: arm
00773838  34 30 9f e5                                      ldr r3, [pc, #0x34]
0077383c  34 20 9f e5                                      ldr r2, [pc, #0x34]
00773840  10 40 2d e9                                      push {r4, lr}
00773844  03 30 8f e0                                      add r3, pc, r3
00773848  02 20 93 e7                                      ldr r2, [r3, r2]
0077384c  00 30 92 e5                                      ldr r3, [r2]
00773850  00 00 53 e3                                      cmp r3, #0
00773854  04 00 00 0a                                      beq #0x77386c
00773858  03 00 a0 e1                                      mov r0, r3
0077385c  00 30 93 e5                                      ldr r3, [r3]
00773860  0f e0 a0 e1                                      mov lr, pc
00773864  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00773868  10 80 bd e8                                      pop {r4, pc}
0077386c  03 00 a0 e1                                      mov r0, r3
00773870  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00773874  4c 12 22 00 b4 39 00 00                          .byte 0x4c, 0x12, 0x22, 0x00, 0xb4, 0x39, 0x00, 0x00

; FUNCTION 0x0077387c, declared_size=24, range_size=24, mode=arm
; class-group: gameswf::render
; alias: _ZN7gameswf6render14set_mask_boundERKNS_4rectE
; demangled: gameswf::render::set_mask_bound(gameswf::rect const&)
; decoder-mode: arm
0077387c  0c c0 9f e5                                      ldr ip, [pc, #0xc]
00773880  0f 00 90 e8                                      ldm r0, {r0, r1, r2, r3}
00773884  0c c0 8f e0                                      add ip, pc, ip
00773888  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0077388c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00773890  f8 90 28 00                                      .byte 0xf8, 0x90, 0x28, 0x00

; FUNCTION 0x00773894, declared_size=16, range_size=16, mode=arm
; class-group: gameswf::render
; alias: _ZN7gameswf6render14get_mask_boundEv
; demangled: gameswf::render::get_mask_bound()
; decoder-mode: arm
00773894  04 00 9f e5                                      ldr r0, [pc, #4]
00773898  00 00 8f e0                                      add r0, pc, r0
0077389c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
007738a0  e4 90 28 00                                      .byte 0xe4, 0x90, 0x28, 0x00

; FUNCTION 0x007739dc, declared_size=128, range_size=128, mode=arm
; class-group: gameswf::render
; alias: _ZN7gameswf6render25create_bitmap_info_nativeEiiPKNS_6membufE
; demangled: gameswf::render::create_bitmap_info_native(int, int, gameswf::membuf const*)
; decoder-mode: arm
007739dc  70 40 2d e9                                      push {r4, r5, r6, lr}
007739e0  68 40 9f e5                                      ldr r4, [pc, #0x68]
007739e4  68 30 9f e5                                      ldr r3, [pc, #0x68]
007739e8  00 50 a0 e1                                      mov r5, r0
007739ec  04 40 8f e0                                      add r4, pc, r4
007739f0  03 00 94 e7                                      ldr r0, [r4, r3]
007739f4  01 e0 a0 e1                                      mov lr, r1
007739f8  02 30 a0 e1                                      mov r3, r2
007739fc  00 c0 90 e5                                      ldr ip, [r0]
00773a00  00 00 5c e3                                      cmp ip, #0
00773a04  06 00 00 0a                                      beq #0x773a24
00773a08  0c 00 a0 e1                                      mov r0, ip
00773a0c  05 10 a0 e1                                      mov r1, r5
00773a10  0e 20 a0 e1                                      mov r2, lr
00773a14  00 c0 9c e5                                      ldr ip, [ip]
00773a18  0f e0 a0 e1                                      mov lr, pc
00773a1c  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
00773a20  70 80 bd e8                                      pop {r4, r5, r6, pc}
00773a24  0c 10 a0 e1                                      mov r1, ip
00773a28  0c 00 a0 e3                                      mov r0, #0xc
00773a2c  5d 7c ff eb                                      bl #0x752ba8
00773a30  00 50 a0 e1                                      mov r5, r0
00773a34  72 98 ff eb                                      bl #0x759c04
00773a38  18 30 9f e5                                      ldr r3, [pc, #0x18]
00773a3c  05 00 a0 e1                                      mov r0, r5
00773a40  03 30 94 e7                                      ldr r3, [r4, r3]
00773a44  08 30 83 e2                                      add r3, r3, #8
00773a48  00 30 85 e5                                      str r3, [r5]
00773a4c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00773a50  a4 10 22 00 b4 39 00 00 4c 1c 00 00              .byte 0xa4, 0x10, 0x22, 0x00, 0xb4, 0x39, 0x00, 0x00, 0x4c, 0x1c, 0x00, 0x00

; FUNCTION 0x00773a5c, declared_size=112, range_size=112, mode=arm
; class-group: gameswf::render
; alias: _ZN7gameswf6render26create_bitmap_info_textureEPN6glitch5video8ITextureE
; demangled: gameswf::render::create_bitmap_info_texture(glitch::video::ITexture*)
; decoder-mode: arm
00773a5c  70 40 2d e9                                      push {r4, r5, r6, lr}
00773a60  58 40 9f e5                                      ldr r4, [pc, #0x58]
00773a64  58 30 9f e5                                      ldr r3, [pc, #0x58]
00773a68  00 10 a0 e1                                      mov r1, r0
00773a6c  04 40 8f e0                                      add r4, pc, r4
00773a70  03 30 94 e7                                      ldr r3, [r4, r3]
00773a74  00 30 93 e5                                      ldr r3, [r3]
00773a78  00 00 53 e3                                      cmp r3, #0
00773a7c  04 00 00 0a                                      beq #0x773a94
00773a80  03 00 a0 e1                                      mov r0, r3
00773a84  00 30 93 e5                                      ldr r3, [r3]
00773a88  0f e0 a0 e1                                      mov lr, pc
00773a8c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00773a90  70 80 bd e8                                      pop {r4, r5, r6, pc}
00773a94  03 10 a0 e1                                      mov r1, r3
00773a98  0c 00 a0 e3                                      mov r0, #0xc
00773a9c  41 7c ff eb                                      bl #0x752ba8
00773aa0  00 50 a0 e1                                      mov r5, r0
00773aa4  56 98 ff eb                                      bl #0x759c04
00773aa8  18 30 9f e5                                      ldr r3, [pc, #0x18]
00773aac  05 00 a0 e1                                      mov r0, r5
00773ab0  03 30 94 e7                                      ldr r3, [r4, r3]
00773ab4  08 30 83 e2                                      add r3, r3, #8
00773ab8  00 30 85 e5                                      str r3, [r5]
00773abc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00773ac0  24 10 22 00 b4 39 00 00 4c 1c 00 00              .byte 0x24, 0x10, 0x22, 0x00, 0xb4, 0x39, 0x00, 0x00, 0x4c, 0x1c, 0x00, 0x00

; FUNCTION 0x00773acc, declared_size=112, range_size=112, mode=arm
; class-group: gameswf::render
; alias: _ZN7gameswf6render23create_bitmap_info_rgbaEPNS_10image_rgbaE
; demangled: gameswf::render::create_bitmap_info_rgba(gameswf::image_rgba*)
; decoder-mode: arm
00773acc  70 40 2d e9                                      push {r4, r5, r6, lr}
00773ad0  58 40 9f e5                                      ldr r4, [pc, #0x58]
00773ad4  58 30 9f e5                                      ldr r3, [pc, #0x58]
00773ad8  00 10 a0 e1                                      mov r1, r0
00773adc  04 40 8f e0                                      add r4, pc, r4
00773ae0  03 30 94 e7                                      ldr r3, [r4, r3]
00773ae4  00 30 93 e5                                      ldr r3, [r3]
00773ae8  00 00 53 e3                                      cmp r3, #0
00773aec  04 00 00 0a                                      beq #0x773b04
00773af0  03 00 a0 e1                                      mov r0, r3
00773af4  00 30 93 e5                                      ldr r3, [r3]
00773af8  0f e0 a0 e1                                      mov lr, pc
00773afc  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00773b00  70 80 bd e8                                      pop {r4, r5, r6, pc}
00773b04  03 10 a0 e1                                      mov r1, r3
00773b08  0c 00 a0 e3                                      mov r0, #0xc
00773b0c  25 7c ff eb                                      bl #0x752ba8
00773b10  00 50 a0 e1                                      mov r5, r0
00773b14  3a 98 ff eb                                      bl #0x759c04
00773b18  18 30 9f e5                                      ldr r3, [pc, #0x18]
00773b1c  05 00 a0 e1                                      mov r0, r5
00773b20  03 30 94 e7                                      ldr r3, [r4, r3]
00773b24  08 30 83 e2                                      add r3, r3, #8
00773b28  00 30 85 e5                                      str r3, [r5]
00773b2c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00773b30  b4 0f 22 00 b4 39 00 00 4c 1c 00 00              .byte 0xb4, 0x0f, 0x22, 0x00, 0xb4, 0x39, 0x00, 0x00, 0x4c, 0x1c, 0x00, 0x00

; FUNCTION 0x00773b3c, declared_size=112, range_size=112, mode=arm
; class-group: gameswf::render
; alias: _ZN7gameswf6render22create_bitmap_info_rgbEPNS_9image_rgbE
; demangled: gameswf::render::create_bitmap_info_rgb(gameswf::image_rgb*)
; decoder-mode: arm
00773b3c  70 40 2d e9                                      push {r4, r5, r6, lr}
00773b40  58 40 9f e5                                      ldr r4, [pc, #0x58]
00773b44  58 30 9f e5                                      ldr r3, [pc, #0x58]
00773b48  00 10 a0 e1                                      mov r1, r0
00773b4c  04 40 8f e0                                      add r4, pc, r4
00773b50  03 30 94 e7                                      ldr r3, [r4, r3]
00773b54  00 30 93 e5                                      ldr r3, [r3]
00773b58  00 00 53 e3                                      cmp r3, #0
00773b5c  04 00 00 0a                                      beq #0x773b74
00773b60  03 00 a0 e1                                      mov r0, r3
00773b64  00 30 93 e5                                      ldr r3, [r3]
00773b68  0f e0 a0 e1                                      mov lr, pc
00773b6c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00773b70  70 80 bd e8                                      pop {r4, r5, r6, pc}
00773b74  03 10 a0 e1                                      mov r1, r3
00773b78  0c 00 a0 e3                                      mov r0, #0xc
00773b7c  09 7c ff eb                                      bl #0x752ba8
00773b80  00 50 a0 e1                                      mov r5, r0
00773b84  1e 98 ff eb                                      bl #0x759c04
00773b88  18 30 9f e5                                      ldr r3, [pc, #0x18]
00773b8c  05 00 a0 e1                                      mov r0, r5
00773b90  03 30 94 e7                                      ldr r3, [r4, r3]
00773b94  08 30 83 e2                                      add r3, r3, #8
00773b98  00 30 85 e5                                      str r3, [r5]
00773b9c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00773ba0  44 0f 22 00 b4 39 00 00 4c 1c 00 00              .byte 0x44, 0x0f, 0x22, 0x00, 0xb4, 0x39, 0x00, 0x00, 0x4c, 0x1c, 0x00, 0x00

; FUNCTION 0x00773bac, declared_size=128, range_size=128, mode=arm
; class-group: gameswf::render
; alias: _ZN7gameswf6render24create_bitmap_info_alphaEiiPh
; demangled: gameswf::render::create_bitmap_info_alpha(int, int, unsigned char*)
; decoder-mode: arm
00773bac  70 40 2d e9                                      push {r4, r5, r6, lr}
00773bb0  68 40 9f e5                                      ldr r4, [pc, #0x68]
00773bb4  68 30 9f e5                                      ldr r3, [pc, #0x68]
00773bb8  00 50 a0 e1                                      mov r5, r0
00773bbc  04 40 8f e0                                      add r4, pc, r4
00773bc0  03 00 94 e7                                      ldr r0, [r4, r3]
00773bc4  01 e0 a0 e1                                      mov lr, r1
00773bc8  02 30 a0 e1                                      mov r3, r2
00773bcc  00 c0 90 e5                                      ldr ip, [r0]
00773bd0  00 00 5c e3                                      cmp ip, #0
00773bd4  06 00 00 0a                                      beq #0x773bf4
00773bd8  0c 00 a0 e1                                      mov r0, ip
00773bdc  05 10 a0 e1                                      mov r1, r5
00773be0  0e 20 a0 e1                                      mov r2, lr
00773be4  00 c0 9c e5                                      ldr ip, [ip]
00773be8  0f e0 a0 e1                                      mov lr, pc
00773bec  0c f0 9c e5                                      ldr pc, [ip, #0xc]
00773bf0  70 80 bd e8                                      pop {r4, r5, r6, pc}
00773bf4  0c 10 a0 e1                                      mov r1, ip
00773bf8  0c 00 a0 e3                                      mov r0, #0xc
00773bfc  e9 7b ff eb                                      bl #0x752ba8
00773c00  00 50 a0 e1                                      mov r5, r0
00773c04  fe 97 ff eb                                      bl #0x759c04
00773c08  18 30 9f e5                                      ldr r3, [pc, #0x18]
00773c0c  05 00 a0 e1                                      mov r0, r5
00773c10  03 30 94 e7                                      ldr r3, [r4, r3]
00773c14  08 30 83 e2                                      add r3, r3, #8
00773c18  00 30 85 e5                                      str r3, [r5]
00773c1c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00773c20  d4 0e 22 00 b4 39 00 00 4c 1c 00 00              .byte 0xd4, 0x0e, 0x22, 0x00, 0xb4, 0x39, 0x00, 0x00, 0x4c, 0x1c, 0x00, 0x00

; FUNCTION 0x00773c2c, declared_size=144, range_size=144, mode=arm
; class-group: gameswf::render
; alias: _ZN7gameswf6render24create_bitmap_info_emptyEv
; demangled: gameswf::render::create_bitmap_info_empty()
; decoder-mode: arm
00773c2c  30 40 2d e9                                      push {r4, r5, lr}
00773c30  78 40 9f e5                                      ldr r4, [pc, #0x78]
00773c34  78 30 9f e5                                      ldr r3, [pc, #0x78]
00773c38  0c d0 4d e2                                      sub sp, sp, #0xc
00773c3c  04 40 8f e0                                      add r4, pc, r4
00773c40  03 30 94 e7                                      ldr r3, [r4, r3]
00773c44  00 20 a0 e3                                      mov r2, #0
00773c48  04 20 8d e5                                      str r2, [sp, #4]
00773c4c  00 30 93 e5                                      ldr r3, [r3]
00773c50  00 20 e0 e3                                      mvn r2, #0
00773c54  04 20 cd e5                                      strb r2, [sp, #4]
00773c58  00 00 53 e3                                      cmp r3, #0
00773c5c  08 00 00 0a                                      beq #0x773c84
00773c60  02 10 a0 e3                                      mov r1, #2
00773c64  03 00 a0 e1                                      mov r0, r3
00773c68  00 c0 93 e5                                      ldr ip, [r3]
00773c6c  01 20 a0 e1                                      mov r2, r1
00773c70  04 30 8d e2                                      add r3, sp, #4
00773c74  0f e0 a0 e1                                      mov lr, pc
00773c78  0c f0 9c e5                                      ldr pc, [ip, #0xc]
00773c7c  0c d0 8d e2                                      add sp, sp, #0xc
00773c80  30 80 bd e8                                      pop {r4, r5, pc}
00773c84  03 10 a0 e1                                      mov r1, r3
00773c88  0c 00 a0 e3                                      mov r0, #0xc
00773c8c  c5 7b ff eb                                      bl #0x752ba8
00773c90  00 50 a0 e1                                      mov r5, r0
00773c94  da 97 ff eb                                      bl #0x759c04
00773c98  18 30 9f e5                                      ldr r3, [pc, #0x18]
00773c9c  05 00 a0 e1                                      mov r0, r5
00773ca0  03 30 94 e7                                      ldr r3, [r4, r3]
00773ca4  08 30 83 e2                                      add r3, r3, #8
00773ca8  00 30 85 e5                                      str r3, [r5]
00773cac  f2 ff ff ea                                      b #0x773c7c
; mapping-symbol data/literal pool
00773cb0  54 0e 22 00 b4 39 00 00 4c 1c 00 00              .byte 0x54, 0x0e, 0x22, 0x00, 0xb4, 0x39, 0x00, 0x00, 0x4c, 0x1c, 0x00, 0x00
