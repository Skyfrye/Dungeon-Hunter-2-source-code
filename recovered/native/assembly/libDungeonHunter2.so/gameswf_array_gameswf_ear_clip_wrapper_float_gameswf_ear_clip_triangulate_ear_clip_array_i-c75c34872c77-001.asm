; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b1e98, declared_size=136, range_size=136, mode=arm
; class-group: gameswf::array<gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info>
; alias: _ZN7gameswf5arrayINS_16ear_clip_wrapperIfNS_20ear_clip_triangulate17ear_clip_array_ioIfEES4_E9path_infoEE7reserveEi
; demangled: gameswf::array<gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info>::reserve(int)
; decoder-mode: arm
007b1e98  10 40 2d e9                                      push {r4, lr}
007b1e9c  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007b1ea0  00 40 a0 e1                                      mov r4, r0
007b1ea4  00 00 53 e3                                      cmp r3, #0
007b1ea8  11 00 00 1a                                      bne #0x7b1ef4
007b1eac  00 00 51 e3                                      cmp r1, #0
007b1eb0  08 20 90 e5                                      ldr r2, [r0, #8]
007b1eb4  08 10 80 e5                                      str r1, [r0, #8]
007b1eb8  0e 00 00 1a                                      bne #0x7b1ef8
007b1ebc  00 00 90 e5                                      ldr r0, [r0]
007b1ec0  00 00 50 e3                                      cmp r0, #0
007b1ec4  02 00 00 0a                                      beq #0x7b1ed4
007b1ec8  0c 10 a0 e3                                      mov r1, #0xc
007b1ecc  91 02 01 e0                                      mul r1, r1, r2
007b1ed0  18 83 fe eb                                      bl #0x752b38
007b1ed4  00 30 a0 e3                                      mov r3, #0
007b1ed8  00 30 84 e5                                      str r3, [r4]
007b1edc  10 80 bd e8                                      pop {r4, pc}
007b1ee0  0c 00 a0 e3                                      mov r0, #0xc
007b1ee4  90 01 00 e0                                      mul r0, r0, r1
007b1ee8  0c 10 a0 e1                                      mov r1, ip
007b1eec  2a 83 fe eb                                      bl #0x752b9c
007b1ef0  00 00 84 e5                                      str r0, [r4]
007b1ef4  10 80 bd e8                                      pop {r4, pc}
007b1ef8  00 c0 90 e5                                      ldr ip, [r0]
007b1efc  00 00 5c e3                                      cmp ip, #0
007b1f00  f6 ff ff 0a                                      beq #0x7b1ee0
007b1f04  0c e0 a0 e3                                      mov lr, #0xc
007b1f08  9e 02 02 e0                                      mul r2, lr, r2
007b1f0c  0c 00 a0 e1                                      mov r0, ip
007b1f10  9e 01 01 e0                                      mul r1, lr, r1
007b1f14  24 83 fe eb                                      bl #0x752bac
007b1f18  00 00 84 e5                                      str r0, [r4]
007b1f1c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007b1f20, declared_size=108, range_size=108, mode=arm
; class-group: gameswf::array<gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info>
; alias: _ZN7gameswf5arrayINS_16ear_clip_wrapperIfNS_20ear_clip_triangulate17ear_clip_array_ioIfEES4_E9path_infoEE6resizeEi
; demangled: gameswf::array<gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info>::resize(int)
; decoder-mode: arm
007b1f20  70 40 2d e9                                      push {r4, r5, r6, lr}
007b1f24  00 40 51 e2                                      subs r4, r1, #0
007b1f28  00 50 a0 e1                                      mov r5, r0
007b1f2c  04 60 90 e5                                      ldr r6, [r0, #4]
007b1f30  02 00 00 0a                                      beq #0x7b1f40
007b1f34  08 30 90 e5                                      ldr r3, [r0, #8]
007b1f38  03 00 54 e1                                      cmp r4, r3
007b1f3c  0f 00 00 ca                                      bgt #0x7b1f80
007b1f40  04 00 56 e1                                      cmp r6, r4
007b1f44  0b 00 00 aa                                      bge #0x7b1f78
007b1f48  0c 30 a0 e3                                      mov r3, #0xc
007b1f4c  93 06 03 e0                                      mul r3, r3, r6
007b1f50  00 20 e0 e3                                      mvn r2, #0
007b1f54  00 00 95 e5                                      ldr r0, [r5]
007b1f58  01 60 86 e2                                      add r6, r6, #1
007b1f5c  04 00 56 e1                                      cmp r6, r4
007b1f60  03 10 80 e0                                      add r1, r0, r3
007b1f64  03 20 80 e7                                      str r2, [r0, r3]
007b1f68  08 20 81 e5                                      str r2, [r1, #8]
007b1f6c  04 20 81 e5                                      str r2, [r1, #4]
007b1f70  0c 30 83 e2                                      add r3, r3, #0xc
007b1f74  f6 ff ff 1a                                      bne #0x7b1f54
007b1f78  04 40 85 e5                                      str r4, [r5, #4]
007b1f7c  70 80 bd e8                                      pop {r4, r5, r6, pc}
007b1f80  c4 10 84 e0                                      add r1, r4, r4, asr #1
007b1f84  c3 ff ff eb                                      bl #0x7b1e98
007b1f88  ec ff ff ea                                      b #0x7b1f40
