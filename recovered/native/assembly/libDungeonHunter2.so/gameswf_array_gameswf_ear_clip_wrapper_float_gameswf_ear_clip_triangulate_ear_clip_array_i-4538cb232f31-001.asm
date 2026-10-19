; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b1d94, declared_size=136, range_size=136, mode=arm
; class-group: gameswf::array<gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::poly_vert>
; alias: _ZN7gameswf5arrayINS_16ear_clip_wrapperIfNS_20ear_clip_triangulate17ear_clip_array_ioIfEES4_E9poly_vertEE7reserveEi
; demangled: gameswf::array<gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::poly_vert>::reserve(int)
; decoder-mode: arm
007b1d94  10 40 2d e9                                      push {r4, lr}
007b1d98  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007b1d9c  00 40 a0 e1                                      mov r4, r0
007b1da0  00 00 53 e3                                      cmp r3, #0
007b1da4  11 00 00 1a                                      bne #0x7b1df0
007b1da8  00 00 51 e3                                      cmp r1, #0
007b1dac  08 20 90 e5                                      ldr r2, [r0, #8]
007b1db0  08 10 80 e5                                      str r1, [r0, #8]
007b1db4  0e 00 00 1a                                      bne #0x7b1df4
007b1db8  00 00 90 e5                                      ldr r0, [r0]
007b1dbc  00 00 50 e3                                      cmp r0, #0
007b1dc0  02 00 00 0a                                      beq #0x7b1dd0
007b1dc4  14 10 a0 e3                                      mov r1, #0x14
007b1dc8  91 02 01 e0                                      mul r1, r1, r2
007b1dcc  59 83 fe eb                                      bl #0x752b38
007b1dd0  00 30 a0 e3                                      mov r3, #0
007b1dd4  00 30 84 e5                                      str r3, [r4]
007b1dd8  10 80 bd e8                                      pop {r4, pc}
007b1ddc  14 00 a0 e3                                      mov r0, #0x14
007b1de0  90 01 00 e0                                      mul r0, r0, r1
007b1de4  0c 10 a0 e1                                      mov r1, ip
007b1de8  6b 83 fe eb                                      bl #0x752b9c
007b1dec  00 00 84 e5                                      str r0, [r4]
007b1df0  10 80 bd e8                                      pop {r4, pc}
007b1df4  00 c0 90 e5                                      ldr ip, [r0]
007b1df8  00 00 5c e3                                      cmp ip, #0
007b1dfc  f6 ff ff 0a                                      beq #0x7b1ddc
007b1e00  14 e0 a0 e3                                      mov lr, #0x14
007b1e04  9e 02 02 e0                                      mul r2, lr, r2
007b1e08  0c 00 a0 e1                                      mov r0, ip
007b1e0c  9e 01 01 e0                                      mul r1, lr, r1
007b1e10  65 83 fe eb                                      bl #0x752bac
007b1e14  00 00 84 e5                                      str r0, [r4]
007b1e18  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007b1e1c, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::poly_vert>
; alias: _ZN7gameswf5arrayINS_16ear_clip_wrapperIfNS_20ear_clip_triangulate17ear_clip_array_ioIfEES4_E9poly_vertEE6resizeEi
; demangled: gameswf::array<gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::poly_vert>::resize(int)
; decoder-mode: arm
007b1e1c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007b1e20  00 40 51 e2                                      subs r4, r1, #0
007b1e24  00 50 a0 e1                                      mov r5, r0
007b1e28  04 60 90 e5                                      ldr r6, [r0, #4]
007b1e2c  02 00 00 0a                                      beq #0x7b1e3c
007b1e30  08 30 90 e5                                      ldr r3, [r0, #8]
007b1e34  03 00 54 e1                                      cmp r4, r3
007b1e38  13 00 00 ca                                      bgt #0x7b1e8c
007b1e3c  04 00 56 e1                                      cmp r6, r4
007b1e40  0f 00 00 aa                                      bge #0x7b1e84
007b1e44  14 20 a0 e3                                      mov r2, #0x14
007b1e48  92 06 02 e0                                      mul r2, r2, r6
007b1e4c  00 c0 a0 e3                                      mov ip, #0
007b1e50  00 00 e0 e3                                      mvn r0, #0
007b1e54  00 70 a0 e3                                      mov r7, #0
007b1e58  00 10 95 e5                                      ldr r1, [r5]
007b1e5c  01 60 86 e2                                      add r6, r6, #1
007b1e60  04 00 56 e1                                      cmp r6, r4
007b1e64  02 30 81 e0                                      add r3, r1, r2
007b1e68  02 c0 81 e7                                      str ip, [r1, r2]
007b1e6c  10 70 83 e5                                      str r7, [r3, #0x10]
007b1e70  04 c0 83 e5                                      str ip, [r3, #4]
007b1e74  08 00 83 e5                                      str r0, [r3, #8]
007b1e78  0c 00 83 e5                                      str r0, [r3, #0xc]
007b1e7c  14 20 82 e2                                      add r2, r2, #0x14
007b1e80  f4 ff ff 1a                                      bne #0x7b1e58
007b1e84  04 40 85 e5                                      str r4, [r5, #4]
007b1e88  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007b1e8c  c4 10 84 e0                                      add r1, r4, r4, asr #1
007b1e90  bf ff ff eb                                      bl #0x7b1d94
007b1e94  e8 ff ff ea                                      b #0x7b1e3c
